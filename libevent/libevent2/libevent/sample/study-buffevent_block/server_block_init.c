#include <event2/listener.h>
#include <event2/bufferevent.h>
#include <event2/buffer.h>

#include <ctype.h>

#include <arpa/inet.h>

#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <unistd.h>

void eventcb(struct bufferevent *bev, short events, void *ptr)
{
	if (events & BEV_EVENT_CONNECTED) {
		/* We're connected to 127.0.0.1:8080.   Ordinarily we'd do
		   something here, like start reading or writing. */
		fprintf(stderr, "Connect okay,-------------------------- %s.\n", (char*)ptr);
	} else if (events & BEV_EVENT_ERROR) {
		/* An error occured while connecting. */
		fprintf(stderr, "Connect error++++--------------------------.\n");
	} else if (events & BEV_EVENT_EOF) {
		fprintf(stderr, "disConnect --------------------------.\n");
	}
	fprintf(stderr, "other erroorrrrrrr--------------------------.\n");
}
#include <fcntl.h>

/** Returns true on success, or false if there was an error */
int SetSocketBlockingEnabled(int fd, int blocking)
{
	int flags = fcntl(fd, F_GETFL, 0);
	if (flags < 0) return 0;
	flags = blocking ? (flags&~O_NONBLOCK) : (flags|O_NONBLOCK);
	return (fcntl(fd, F_SETFL, flags) == 0) ? 1: 0;
}

	static void
echo_read_cb(struct bufferevent *bev, void *ctx)
{
	printf("echo_read_cb ctx:%p\n", ctx);
	/* This callback is invoked when there is data to read on bev. */
	struct evbuffer *input = bufferevent_get_input(bev);

	/* Copy all the data from the input buffer to the output buffer. */
	// evbuffer_add_buffer(output, input);
	// 能读到数据的时候 去连接其他server 而且是以阻塞的方式

	printf("echo_read_cb1 \n");
	struct sockaddr_in servaddr;
	memset(&servaddr, 0, sizeof(servaddr));
	servaddr.sin_family = AF_INET;
	//servaddr.sin_addr.s_addr = htonl(0x7f000001); /* 127.0.0.1 */
	if (inet_aton("192.168.1.104", &servaddr.sin_addr) == 0)
	{
		perror("inet_aton failure!");
		printf("address:%u\n", servaddr.sin_addr.s_addr);
		exit(EXIT_FAILURE);
	}

	servaddr.sin_port = htons(5188); /* Port 9876*/

	int sockconn;
	if ((sockconn = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0)
	{
		perror("socket failure");
		exit(EXIT_FAILURE);
	}
	//evutil_make_socket_nonblocking(sockconn);

	//struct timeval	tv;
	//tv.tv_sec = 10;
	//tv.tv_usec = 0;
	//setsockopt(sockconn, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv));
	//setsockopt(sockconn, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv));
	// bufferevent_socket_new 只是分配内存 没有系统调用
	struct bufferevent *bev1 = bufferevent_socket_new(ctx, sockconn, BEV_OPT_CLOSE_ON_FREE);
	//bufferevent_socket_connect(bev, NULL, 0);
	//bufferevent_settimeout(bev1, 10, 10);
	//bev1 = bufferevent_socket_new(ctx, -1, BEV_OPT_CLOSE_ON_FREE);
	bufferevent_enable(bev1, EV_READ|EV_WRITE);
	//bufferevent_socket_connect(bev, NULL, 0);
	bufferevent_setcb(bev1, NULL, NULL, eventcb, "hello");
	//SetSocketBlockingEnabled(sockconn, 1);

	bufferevent_socket_connect(bev, NULL, 0);
	printf("bufferevent_socket_connect return errno:%d \n", errno);

	//// 这里默认是阻塞的，会一直阻塞 直到连接成功 或超时 // // 
	//if (bufferevent_socket_connect(bev1,
	//			(struct sockaddr *)&servaddr, sizeof(servaddr)) < 0) {
	//	/* Error starting connection */
	//	// 连接不能马上建立的时候 应该添加到写事件中
	//	fprintf(stderr, "Connect failed.\n");
	//	perror("connect...........");
	//	//#define	ETIMEDOUT	110	/* Connection timed out */
	//	//bufferevent_free(bev1);
	//	//return -1;
	//	// 110错误码走到这里  11, 115错误码 不会走到这里
	//}

    ////#define	EAGAIN		11	/* Try again */ 
    ////#define	ECONNREFUSED	111	/* Connection refused */
    ////#define	EINPROGRESS	115	/* Operation now in progress */ // connect 被超时打断11, 
	//if (errno != EAGAIN )
	//{
	//	perror("00buffevent_connect");
	//	printf("bufferevent_socket_connect error\n");
    //	//如果 在过程中 超时会被 打断	EINPROGRESS	115	/* Operation now in progress */
	//	bufferevent_free(bev1);
	//	return 0;
	//}
	//else
	//{
	//	// 连接成功  忽略EAGAIN
	//	perror("11buffevent_connect");
	//	printf("bufferevent_socket_connect success\n");
	//}


	if (connect(sockconn, (struct sockaddr*)&servaddr, sizeof(servaddr)) < -1)
	{
		perror("connnect error");
		exit(EXIT_FAILURE);
	}
	else
	{
		printf("connect success\n");
		// 调用成功的时候  调用 onconnect函数//
		// 断开连接的时候 会主动调用 eventcb
	}
	//bufferevent_socket_connect(bev, NULL, 0);
	char recvbuf[1024] = {0};
	memset(recvbuf, 0, sizeof(recvbuf));
	//sleep(5);
	read(sockconn, recvbuf, sizeof(recvbuf)); 
	printf("read..----[%s]-----\n", recvbuf);



}

	static void
echo_event_cb(struct bufferevent *bev, short events, void *ctx)
{
	if (events & BEV_EVENT_ERROR)
		perror("Error from bufferevent");
	if (events & (BEV_EVENT_EOF | BEV_EVENT_ERROR)) {
		bufferevent_free(bev);
	}
}

	static void
accept_conn_cb(struct evconnlistener *listener,
		evutil_socket_t fd, struct sockaddr *address, int socklen,
		void *ctx)
{
	/* We got a new connection! Set up a bufferevent for it. */
	struct event_base *base = evconnlistener_get_base(listener);
	struct bufferevent *bev = bufferevent_socket_new(
			base, fd, BEV_OPT_CLOSE_ON_FREE);

	bufferevent_setcb(bev, echo_read_cb, NULL, echo_event_cb, ctx);

	bufferevent_enable(bev, EV_READ|EV_WRITE);
}

	static void
accept_error_cb(struct evconnlistener *listener, void *ctx)
{
	struct event_base *base = evconnlistener_get_base(listener);
	int err = EVUTIL_SOCKET_ERROR();
	fprintf(stderr, "Got an error %d (%s) on the listener. "
			"Shutting down.\n", err, evutil_socket_error_to_string(err));

	event_base_loopexit(base, NULL);
}

	int
main(int argc, char **argv)
{
	struct event_base *base;
	struct evconnlistener *listener;
	struct sockaddr_in sin;

	int port = 9876;

	if (argc > 1) {
		port = atoi(argv[1]);
	}
	if (port<=0 || port>65535) {
		puts("Invalid port");
		return 1;
	}

	base = event_base_new();
	if (!base) {
		puts("Couldn't open event base");
		return 1;
	}

	/* Clear the sockaddr before using it, in case there are extra
	 * platform-specific fields that can mess us up. */
	memset(&sin, 0, sizeof(sin));
	/* This is an INET address */
	sin.sin_family = AF_INET;
	/* Listen on 0.0.0.0 */
	sin.sin_addr.s_addr = htonl(0);
	/* Listen on the given port. */
	sin.sin_port = htons(port);

	listener = evconnlistener_new_bind(base, accept_conn_cb, base,
			LEV_OPT_CLOSE_ON_FREE|LEV_OPT_REUSEABLE|LEV_OPT_DEFERRED_ACCEPT, -1,
			(struct sockaddr*)&sin, sizeof(sin));
	if (!listener) {
		perror("Couldn't create listener");
		return 1;
	}
	else
	{
		printf("create listener success, base:%p\n", base);
	}
	evconnlistener_set_error_cb(listener, accept_error_cb);

	event_base_dispatch(base);
	return 0;
}


