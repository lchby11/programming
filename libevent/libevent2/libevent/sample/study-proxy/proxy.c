
#if defined(__APPLE__) && defined(__clang__)
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#endif

#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

#ifdef _WIN32
#include <winsock2.h>
#include <ws2tcpip.h>
#else
#include <sys/socket.h>
#include <netinet/in.h>
#endif

#include <event2/bufferevent.h>
#include <event2/buffer.h>
#include <event2/listener.h>
#include <event2/util.h>


static struct event_base *base;
static struct sockaddr_storage listen_on_addr;
static struct sockaddr_storage connect_to_addr;
static int connect_to_addrlen;

#define MAX_OUTPUT (512*1024)

static void drained_writecb(struct bufferevent *bev, void *ctx);
static void eventcb(struct bufferevent *bev, short what, void *ctx);

static void
readcb(struct bufferevent *bev, void *ctx)
{
	struct bufferevent *partner = ctx;
	struct evbuffer *src, *dst;
	size_t len;
	src = bufferevent_get_input(bev);
	len = evbuffer_get_length(src);
	if (!partner) {
		evbuffer_drain(src, len);
		return;
	}
	dst = bufferevent_get_output(partner);
	evbuffer_add_buffer(dst, src);

	if (evbuffer_get_length(dst) >= MAX_OUTPUT) {
		/* We're giving the other side data faster than it can
		 * pass it on.  Stop reading here until we have drained the
		 * other side to MAX_OUTPUT/2 bytes. */
		bufferevent_setcb(partner, readcb, drained_writecb,
		    eventcb, bev);
		bufferevent_setwatermark(partner, EV_WRITE, MAX_OUTPUT/2,
		    MAX_OUTPUT);
		bufferevent_disable(bev, EV_READ);
	}
}

static void
drained_writecb(struct bufferevent *bev, void *ctx)
{
	struct bufferevent *partner = ctx;

	/* We were choking the other side until we drained our outbuf a bit.
	 * Now it seems drained. */
	bufferevent_setcb(bev, readcb, NULL, eventcb, partner);
	bufferevent_setwatermark(bev, EV_WRITE, 0, 0);
	if (partner)
		bufferevent_enable(partner, EV_READ);
}

static void
close_on_finished_writecb(struct bufferevent *bev, void *ctx)
{
	struct evbuffer *b = bufferevent_get_output(bev);

	if (evbuffer_get_length(b) == 0) {
		bufferevent_free(bev);
	}
}

static void
eventcb(struct bufferevent *bev, short what, void *ctx)
{
	struct bufferevent *partner = ctx;

	if (what & (BEV_EVENT_EOF|BEV_EVENT_ERROR)) {
		if (what & BEV_EVENT_ERROR) {
			if (errno)
				perror("connection error");
		}

		if (partner) {
			/* Flush all pending data */
			readcb(bev, ctx);

			if (evbuffer_get_length(
				    bufferevent_get_output(partner))) {
				/* We still have to flush data from the other
				 * side, but when that's done, close the other
				 * side. */
				bufferevent_setcb(partner,
				    NULL, close_on_finished_writecb,
				    eventcb, NULL);
				bufferevent_disable(partner, EV_READ);
			} else {
				/* We have nothing left to say to the other
				 * side; close it. */
				bufferevent_free(partner);
			}
		}
		bufferevent_free(bev);
	}
}

static void
syntax(void)
{
	fputs("Syntax:\n", stderr);
	fputs("   proxy <listen-on-addr> <connect-to-addr>\n", stderr);
	fputs("Example:\n", stderr);
	fputs("   proxy 127.0.0.1:8888 1.2.3.4:80\n", stderr);

	exit(1);
}

static void
accept_cb(struct evconnlistener *listener, evutil_socket_t fd,
    struct sockaddr *a, int slen, void *p)
{
	struct bufferevent *b_out, *b_in;
	/* Create two linked bufferevent objects: one to connect, one for the
	 * new connection */
	b_in = bufferevent_socket_new(base, fd,
			BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);

	b_out = bufferevent_socket_new(base, -1,
			BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);


	assert(b_in && b_out);

	if (bufferevent_socket_connect(b_out,
				(struct sockaddr*)&connect_to_addr, connect_to_addrlen)<0) {
		perror("bufferevent_socket_connect");
		bufferevent_free(b_out);
		bufferevent_free(b_in);
		return;
	}


	bufferevent_setcb(b_in, readcb, NULL, eventcb, b_out);
	bufferevent_setcb(b_out, readcb, NULL, eventcb, b_in);

	bufferevent_enable(b_in, EV_READ|EV_WRITE);
	bufferevent_enable(b_out, EV_READ|EV_WRITE);
}

	int
main(int argc, char **argv)
{
	int socklen;

	struct evconnlistener *listener;

	if (argc < 3)
		syntax();
	memset(&listen_on_addr, 0, sizeof(listen_on_addr));
	socklen = sizeof(listen_on_addr);
	if (evutil_parse_sockaddr_port(argv[1],
				(struct sockaddr*)&listen_on_addr, &socklen)<0) {
		int p = atoi(argv[1]);
		struct sockaddr_in *sin = (struct sockaddr_in*)&listen_on_addr;
		if (p < 1 || p > 65535)
			syntax();
		sin->sin_port = htons(p);
		sin->sin_addr.s_addr = htonl(0x7f000001);
		sin->sin_family = AF_INET;
		socklen = sizeof(struct sockaddr_in);
	}

	memset(&connect_to_addr, 0, sizeof(connect_to_addr));
	connect_to_addrlen = sizeof(connect_to_addr);
	if (evutil_parse_sockaddr_port(argv[2],
				(struct sockaddr*)&connect_to_addr, &connect_to_addrlen)<0)
		syntax();

	base = event_base_new();
	if (!base) {
		perror("event_base_new()");
		return 1;
	}


	listener = evconnlistener_new_bind(base, accept_cb, NULL,
			LEV_OPT_CLOSE_ON_FREE|LEV_OPT_CLOSE_ON_EXEC|LEV_OPT_REUSEABLE,
			-1, (struct sockaddr*)&listen_on_addr, socklen);

	if (! listener) {
		fprintf(stderr, "Couldn't open listener.\n");
		event_base_free(base);
		return 1;
	}
	event_base_dispatch(base);

	evconnlistener_free(listener);
	event_base_free(base);

	return 0;
}
