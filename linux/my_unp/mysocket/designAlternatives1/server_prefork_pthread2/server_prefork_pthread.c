/* include serv01 */
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/un.h>
#include <signal.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <time.h>
#include <wait.h>
#include <errno.h>
#include <pthread.h>
#include <sys/resource.h>
#include<sys/mman.h>
#include <sys/file.h>


#define MAXLINE  1024
#define err_msg(m)  do  {  perror(m); exit(EXIT_FAILURE);  } while(0)
#define err_sys(m)  do  {  perror(m); exit(EXIT_FAILURE);  } while(0)
#define err_quit(m)  do  {  perror(m); exit(EXIT_FAILURE);  } while(0)
int tcp_listen(const char *host, const char *serv, socklen_t *addrlenp);
int Tcp_listen(const char *host, const char *serv, socklen_t *addrlenp);
long * meter(int nchildren);


typedef struct {
  pthread_t		thread_tid;		/* thread ID */
  long			thread_count;	/* # connections handled */
} Thread;
Thread	*tptr;		/* array of Thread structures; calloc'ed */

#define	MAXNCLI	32
int					clifd[MAXNCLI], iget, iput;
pthread_mutex_t		clifd_mutex;
pthread_cond_t		clifd_cond;

int				listenfd, nthreads;
socklen_t		addrlen;

void web_child(int sockfd);
void pr_cpu_time(void);

long			*cptr, *meter(int);	/* for counting #clients/child */

pthread_mutex_t	mmlock;


pthread_mutex_t		clifd_mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t		clifd_cond = PTHREAD_COND_INITIALIZER;

int
main(int argc, char **argv)
{
	int			i, listenfd, connfd;
	void		sig_int(int), thread_make(int);
	socklen_t	addrlen, clilen;
	struct sockaddr	*cliaddr;

	if (argc == 3)
		listenfd = Tcp_listen(NULL, argv[1], &addrlen);
	else if (argc == 4)
		listenfd = Tcp_listen(argv[1], argv[2], &addrlen);
	else
		err_quit("usage: serv08 [ <host> ] <port#> <#threads>");
	cliaddr = malloc(addrlen);

	nthreads = atoi(argv[argc-1]);
	tptr = calloc(nthreads, sizeof(Thread));
	iget = iput = 0;

		/* 4create all the threads */
	for (i = 0; i < nthreads; i++)
		thread_make(i);		/* only main thread returns */

	if (signal(SIGINT, sig_int) == SIG_ERR)
		perror("signal SIGINT");

	for ( ; ; ) {
		clilen = addrlen;
		connfd = accept(listenfd, cliaddr, &clilen);
		if(connfd < 0)
		{
			err_sys("accept");
		}

		pthread_mutex_lock(&clifd_mutex);
		clifd[iput] = connfd;
		if (++iput == MAXNCLI)
			iput = 0;
		if (iput == iget)
			err_quit("iput = iget ");
		pthread_cond_signal(&clifd_cond);
		pthread_mutex_unlock(&clifd_mutex);
	}
}
/* end serv08 */

void
sig_int(int signo)
{
	int		i;
	void	pr_cpu_time(void);

	pr_cpu_time();

	for (i = 0; i < nthreads; i++)
		printf("thread %d, %ld connections\n", i, tptr[i].thread_count);

	exit(0);
}

/* include tcp_listen */

int tcp_listen(const char *host, const char *serv, socklen_t *addrlenp)
{
	int				listenfd, n;
	const int		on = 1;
	struct addrinfo	hints, *res, *ressave;

	bzero(&hints, sizeof(struct addrinfo));
	hints.ai_flags = AI_PASSIVE;
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;

	if ( (n = getaddrinfo(host, serv, &hints, &res)) != 0)
	{

		char tmp[128];
		sprintf(tmp, "tUcp_connect error for %s, %s: %s", host, serv, gai_strerror(n) );
		err_quit(tmp);
	}
	ressave = res;

	do {
		listenfd = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
		if (listenfd < 0)
			continue;		/* error, try next one */

		if(setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)))
		{
			err_quit("setsockopt");
		}
		if (bind(listenfd, res->ai_addr, res->ai_addrlen) == 0)
			break;			/* success */

		close(listenfd);	/* bind error, close and try next one */
	} while ( (res = res->ai_next) != NULL);

	if (res == NULL)	/* errno from final socket() or bind() */
	{
		char tmp[128];
		snprintf(tmp, sizeof(tmp),  "tcp_connect error for %s, %s", host, serv);
		err_sys(tmp);
	}

	if(listen(listenfd, SOMAXCONN) < 0)
	{
		err_quit("listen");
	}

	if (addrlenp)
		*addrlenp = res->ai_addrlen;	/* return size of protocol address */

	freeaddrinfo(ressave);

	return(listenfd);
}
/* end tcp_listen */

/*
 * We place the wrapper function here, not in wraplib.c, because some
 * XTI programs need to include wraplib.c, and it also defines
 * a Tcp_listen() function.
 */

int Tcp_listen(const char *host, const char *serv, socklen_t *addrlenp)
{
	return(tcp_listen(host, serv, addrlenp));
}
#define	MAXN	16384		/* max # bytes client can request */

ssize_t writen(int fd, const void *buf, size_t count)
{
	size_t nleft = count;
	ssize_t nwritten;
	char *bufp = (char*)buf;

	while (nleft > 0)
	{
		if ((nwritten = write(fd, bufp, nleft)) < 0)
		{
			if (errno == EINTR)
				continue;
			return -1;
		}
		else if (nwritten == 0)
			continue;

		bufp += nwritten;
		nleft -= nwritten;
	}

	return count;
}
ssize_t recv_peek(int sockfd, void *buf, size_t len)
{
	while (1)
	{
		int ret = recv(sockfd, buf, len, MSG_PEEK);
		if (ret == -1 && errno == EINTR)
			continue;
		return ret;
	}
}


ssize_t readn(int fd, void *buf, size_t count)
{
	size_t nleft = count;
	ssize_t nread;
	char *bufp = (char*)buf;

	while (nleft > 0)
	{
		if ((nread = read(fd, bufp, nleft)) < 0)
		{
			if (errno == EINTR)
				continue;
			return -1;
		}
		else if (nread == 0)
			return count - nleft;

		bufp += nread;
		nleft -= nread;
	}

	return count;
}


ssize_t readline(int sockfd, void *buf, size_t maxline)
{
	int ret;
	int nread;
	char *bufp = buf;
	int nleft = maxline;
	while (1)
	{
		ret = recv_peek(sockfd, bufp, nleft);
		if (ret < 0)
			return ret;
		else if (ret == 0)
			return ret;

		nread = ret;
		int i;
		for (i=0; i<nread; i++)
		{
			if (bufp[i] == '\n')
			{
				ret = readn(sockfd, bufp, i+1);
				if (ret != i+1)
					exit(EXIT_FAILURE);

				return ret;
			}
		}

		if (nread > nleft)
			exit(EXIT_FAILURE);

		nleft -= nread;
		ret = readn(sockfd, bufp, nread);
		if (ret != nread)
			exit(EXIT_FAILURE);

		bufp += nread;
	}

	return -1;
}



	void
web_child(int sockfd)
{
	int			ntowrite;
	ssize_t		nread;
	char		line[MAXLINE], result[MAXN];

	for ( ; ; ) {
		nread = readline(sockfd, line, MAXLINE);
		if (nread < 0)
			err_quit("readline");
		else if(nread == 0)
			return;		/* connection closed by other end */

		/* 4line from client specifies #bytes to write back */
		ntowrite = atol(line);
		if ((ntowrite <= 0) || (ntowrite > MAXN))
		{
			char tmp[128];
			snprintf(tmp, sizeof(tmp), "client request for %d bytes", ntowrite);
			err_quit(tmp);
		}

		if(writen(sockfd, result, ntowrite) < 0)  // 其实这里不应该断掉
			err_quit("writen");

	}
}
void pr_cpu_time(void)
{
	double			user, sys;
	struct rusage	myusage, childusage;

	if (getrusage(RUSAGE_SELF, &myusage) < 0)
		err_sys("getrusage error");
	if (getrusage(RUSAGE_CHILDREN, &childusage) < 0)
		err_sys("getrusage error");

	user = (double) myusage.ru_utime.tv_sec +
		myusage.ru_utime.tv_usec/1000000.0;
	user += (double) childusage.ru_utime.tv_sec +
		childusage.ru_utime.tv_usec/1000000.0;
	sys = (double) myusage.ru_stime.tv_sec +
		myusage.ru_stime.tv_usec/1000000.0;
	sys += (double) childusage.ru_stime.tv_sec +
		childusage.ru_stime.tv_usec/1000000.0;

	printf("\nuser time = %g, sys time = %g\n", user, sys);
}

void
thread_make(int i)
{
	void	*thread_main(void *);

	pthread_create(&tptr[i].thread_tid, NULL, &thread_main, (void *) i);
	return;		/* main thread returns */
}

void *
thread_main(void *arg)
{
	int		connfd;
	void	web_child(int);

	printf("thread %d starting\n", (int) arg);
	for ( ; ; ) {
    	pthread_mutex_lock(&clifd_mutex);
		while (iget == iput)
			pthread_cond_wait(&clifd_cond, &clifd_mutex);
		connfd = clifd[iget];	/* connected socket to service */
		if (++iget == MAXNCLI)
			iget = 0;
		pthread_mutex_unlock(&clifd_mutex);
		tptr[(int) arg].thread_count++;

		web_child(connfd);		/* process request */
		close(connfd);
	}
}


