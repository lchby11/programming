#include <unistd.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <fcntl.h>

#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <signal.h>
#include <sys/time.h>


#define ERR_EXIT(m) \
	do \
	{ \
		perror(m); \
		exit(EXIT_FAILURE); \
	} while(0)


int main(int argc, char *argv[])
{
	struct timeval tv_interval = {1, 0};
	struct timeval tv_value = {1, 0};
	struct itimerval it;
	it.it_interval = tv_interval;
	it.it_value = tv_value;
	setitimer(ITIMER_REAL, &it, NULL);

	int i;
	for (i=0; i<10000; i++);
		;

	getitimer(ITIMER_REAL, &it);
	printf("%d %d %d %d\n", (int)it.it_interval.tv_sec, (int)it.it_interval.tv_usec, (int)it.it_value.tv_sec, (int)it.it_value.tv_usec);

	return 0;
}
