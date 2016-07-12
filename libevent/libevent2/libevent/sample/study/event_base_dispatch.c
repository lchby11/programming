/* For sockaddr_in */
#include <netinet/in.h>
/* For socket functions */
#include <sys/socket.h>
/* For fcntl */
#include <fcntl.h>

#include <event2/event.h>

#include <assert.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>

#define MAX_LINE 16384

void do_read(evutil_socket_t fd, short events, void *arg);
void do_write(evutil_socket_t fd, short events, void *arg);

	char
rot13_char(char c)
{
	/* We don't want to use isalpha here; setting the locale would change
	 * which characters are considered alphabetical. */
	if ((c >= 'a' && c <= 'm') || (c >= 'A' && c <= 'M'))
		return c + 13;
	else if ((c >= 'n' && c <= 'z') || (c >= 'N' && c <= 'Z'))
		return c - 13;
	else
		return c;
}

struct fd_state {
	char buffer[MAX_LINE];
	size_t buffer_used;

	size_t n_written;
	size_t write_upto;

	struct event *read_event;
	struct event *write_event;
};

	struct fd_state *
alloc_fd_state(struct event_base *base, evutil_socket_t fd)
{
	struct fd_state *state = malloc(sizeof(struct fd_state));
	if (!state)
		return NULL;
	state->read_event = event_new(base, fd, EV_READ|EV_PERSIST, do_read, state);
	if (!state->read_event) {
		free(state);
		return NULL;
	}
	state->write_event =
		event_new(base, fd, EV_WRITE|EV_PERSIST, do_write, state);

	if (!state->write_event) {
		event_free(state->read_event);
		free(state);
		return NULL;
	}

	state->buffer_used = state->n_written = state->write_upto = 0;

	assert(state->write_event);
	return state;
}

	void
free_fd_state(struct fd_state *state)
{
	event_free(state->read_event);
	event_free(state->write_event);
	free(state);
}

	void
do_read(evutil_socket_t fd, short events, void *arg)
{
	struct fd_state *state = arg;
	char buf[1024];
	int i;
	ssize_t result;
	while (1) {
		assert(state->write_event);
		result = recv(fd, buf, sizeof(buf), 0);
		if (result <= 0)
		{
			if (errno == EAGAIN || errno == EWOULDBLOCK)
			{
				perror("errno == EAGIN || errno == EWOULDBLOCK, break");
				//fprintf(stderr, "errno=%d, break", errno);
				break;
			}
			else
			{
				perror("error...exit");
				//fprintf(stderr, "errno=%d, exit", errno);
				return;
			}
		}
		// 读取到一部分数据之后 就开始添加写事件 
		for (i=0; i < result; ++i)  {
			if (state->buffer_used < sizeof(state->buffer))
				state->buffer[state->buffer_used++] = rot13_char(buf[i]);
			if (buf[i] == '\n') {
				assert(state->write_event);
				event_add(state->write_event, NULL);
				state->write_upto = state->buffer_used;
			}
		}
	}

	if (result == 0) {
		free_fd_state(state);
	} else if (result < 0) {
		if (errno == EAGAIN) // XXXX use evutil macro
			return;
		perror("recv");
		free_fd_state(state);
	}
}

	void
do_write(evutil_socket_t fd, short events, void *arg)
{
	struct fd_state *state = arg;

	while (state->n_written < state->write_upto) {
		ssize_t result = send(fd, state->buffer + state->n_written,
				state->write_upto - state->n_written, 0);
		if (result < 0) {
			if (errno == EAGAIN) // XXX use evutil macro
				return;
			free_fd_state(state);
			return;
		}
		assert(result != 0);

		state->n_written += result;
	}

	if (state->n_written == state->buffer_used)
		state->n_written = state->write_upto = state->buffer_used = 1;

	event_del(state->write_event);
}

	void
do_accept(evutil_socket_t listener, short event, void *arg)
{
	struct event_base *base = arg;
	struct sockaddr_storage ss;
	socklen_t slen = sizeof(ss);
	int fd = accept(listener, (struct sockaddr*)&ss, &slen);
	if (fd < 0) { // XXXX eagain??
		perror("accept");
	} else if (fd > FD_SETSIZE) {
		close(fd); // XXX replace all closes with EVUTIL_CLOSESOCKET */
	} else {
		struct fd_state *state;
		evutil_make_socket_nonblocking(fd);
		state = alloc_fd_state(base, fd);
		assert(state); /*XXX err*/
		assert(state->write_event);
		event_add(state->read_event, NULL);
	}
}

	void
run(void)
{
	evutil_socket_t listener;
	struct sockaddr_in sin;
	struct event_base *base;
	struct event *listener_event;

	base = event_base_new();
	if (!base)
		return; /*XXXerr*/

	sin.sin_family = AF_INET;
	sin.sin_addr.s_addr = 0;
	sin.sin_port = htons(40713);

	listener = socket(AF_INET, SOCK_STREAM, 0);
	evutil_make_socket_nonblocking(listener);

#ifndef WIN32
	{
		int one = 1;
		setsockopt(listener, SOL_SOCKET, SO_REUSEADDR, &one, sizeof(one));
	}
#endif

	if (bind(listener, (struct sockaddr*)&sin, sizeof(sin)) < 0) {
		perror("bind");
		return;
	}

	if (listen(listener, 16)<0) {
		perror("listen");
		return;
	}

	listener_event = event_new(base, listener, EV_READ|EV_PERSIST, do_accept, (void*)base);
	/*XXX check it */
	event_add(listener_event, NULL);

	event_base_dispatch(base);
}

	int
main(int c, char **v)
{
	setvbuf(stdout, NULL, _IONBF, 0);

	run();
	return 0;
}

/** 在dispatch 没有连接进来的时候 

 epoll_create1(EPOLL_CLOEXEC)            = 3
 
 pipe2([4, 5], O_NONBLOCK|O_CLOEXEC)     = 0
 
 socket(PF_INET, SOCK_STREAM, IPPROTO_IP) = 6
 fcntl(6, F_GETFL)                       = 0x2 (flags O_RDWR)
 fcntl(6, F_SETFL, O_RDWR|O_NONBLOCK)    = 0
 
 setsockopt(6, SOL_SOCKET, SO_REUSEADDR, [1], 4) = 0
 bind(6, {sa_family=AF_INET, sin_port=htons(40713), sin_addr=inet_addr("0.0.0.0")}, 16) = 0
 listen(6, 16)                           = 0
 epoll_ctl(3, EPOLL_CTL_ADD, 6, {EPOLLIN, {u32=6, u64=6}}) = 0
 epoll_wait(3,
 **/


/**

  有连接进来的时候 accept返回文件描述符 7 
  然后把其加入epoll_ctl 控制可读集合中
  接着epoll_wait
  epoll_wait(3, {{EPOLLIN, {u32=6, u64=6}}}, 32, -1) = 1
  clock_gettime(CLOCK_MONOTONIC_COARSE, {97699, 109581047}) = 0
  gettimeofday({1468305712, 923237}, NULL) = 0
  accept(6, {sa_family=AF_INET, sin_port=htons(35070), sin_addr=inet_addr("127.0.0.1")}, [16]) = 7
  fcntl(7, F_GETFL)                       = 0x2 (flags O_RDWR)
  fcntl(7, F_SETFL, O_RDWR|O_NONBLOCK)    = 0
  // EPOLL_CTL_ADD 这里通过 EPOLL_CTL_ADD 的形式加入？
  epoll_ctl(3, EPOLL_CTL_ADD, 7, {EPOLLIN, {u32=7, u64=7}}) = 0
  epoll_wait(3,


  **/

/**
epoll_wait(3, {{EPOLLIN, {u32=7, u64=7}}}, 32, -1) = 1
clock_gettime(CLOCK_MONOTONIC_COARSE, {98031, 561570179}) = 0
gettimeofday({1468306045, 374176}, NULL) = 0
recvfrom(7, "abcdEFG\r\n", 1024, 0, NULL, NULL) = 9
		**** 读取到一部分数据之后 就开始添加写事件  ***
		// 此时读和写事件在集合中
epoll_ctl(3, EPOLL_CTL_MOD, 7, {EPOLLIN|EPOLLOUT, {u32=7, u64=7}}) = 0
recvfrom(7, 0x7ffc5e234ea0, 1024, 0, 0, 0) = -1 EAGAIN (Resource temporarily unavailable)

// 在这里只有可写事件返回了  可读时间没有返回
epoll_wait(3, {{EPOLLOUT, {u32=7, u64=7}}}, 32, -1) = 1
clock_gettime(CLOCK_MONOTONIC_COARSE, {98031, 561570179}) = 0

// 可写事件返回的时候触发 do_write函数
sendto(7, "nopqRST\r\n", 9, 0, NULL, 0) = 9

// do_write调用之后  就event_del 删掉了 可写事件  所以在这里只有可读事件了 EPOLLIN
// libevent 添加事件的方式 在这里是 EPOLL_CTL_MOD  即MODIFY的形式 修改
epoll_ctl(3, EPOLL_CTL_MOD, 7, {EPOLLIN, {u32=7, u64=7}}) = 0
epoll_wait(3,

**/



/**
  // 把写描述符add的操作 注释掉

  // 可以看出 循环读取 直到读到 -1
  epoll_wait(3, {{EPOLLIN, {u32=7, u64=7}}}, 32, -1) = 1
  clock_gettime(CLOCK_MONOTONIC_COARSE, {99873, 589509964}) = 0
  gettimeofday({1468307887, 401372}, NULL) = 0
  recvfrom(7, "abcdef\r\n", 1024, 0, NULL, NULL) = 8
  recvfrom(7, 0x7ffc926c5c40, 1024, 0, 0, 0) = -1 EAGAIN (Resource temporarily unavailable)
  epoll_wait(3,

**/

