#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <semaphore.h>
#include <sys/shm.h>
#include <sys/stat.h>        /* For mode constants */
#include <fcntl.h>           /* For O_* constants */
#include <mqueue.h> 
#include <sys/ipc.h>  // ftok



#define handle_error(msg) \
	do { perror(msg); exit(EXIT_FAILURE); } while (0)


struct mq_attr attr; // mq_maxmsg AND mq_msgsize both init to 0
	int
main(int argc, char *argv[])
{
	int c,  flags ;
	mqd_t mqd;

	flags = O_RDWR | O_CREAT; // 
	while ( (c = getopt(argc, argv, "em:z:")) != -1) {
		switch (c) {
			case 'e':
				flags |= O_EXCL;
				break;
			case 'm':
				attr.mq_maxmsg = atol(optarg);
				break;
			case 'z':
				attr.mq_msgsize = atol(optarg);
				break;
		}
	}
	if (optind != argc - 1)
	{
		fprintf(stderr, "usage: %s [ -e ] -m maxmsg -z msgsize <name> \n", argv[0]);
		exit(1);
	}

	if ((attr.mq_maxmsg != 0 && attr.mq_msgsize == 0)|| 
			(attr.mq_maxmsg == 0 && attr.mq_msgsize != 0))
	{
		fprintf(stderr, "must specify both -m maxmsg and -z msgsize\n");
		exit(1);
	}
	mqd = mq_open(argv[optind], flags, 0666, (attr.mq_maxmsg != 0) ? &attr : NULL);
	if (mqd < 0)
	{
		handle_error("mq_open");
	}

	int ret = mq_close(mqd);
	if (ret < 0)
	{
		handle_error("mq_close");
	}

	exit(EXIT_SUCCESS);
}
