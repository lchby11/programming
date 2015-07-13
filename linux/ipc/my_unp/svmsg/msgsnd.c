#include	<sys/ipc.h>		/* System V IPC */
#include	<sys/msg.h>		/* System V message queues */
#include	<sys/types.h>	/* basic system data types */
#include	<sys/time.h>	/* timeval{} for select() */
#include	<time.h>		/* timespec{} for pselect() */
#include	<errno.h>
#include	<fcntl.h>		/* for nonblocking */
#include	<limits.h>		/* PIPE_BUF */
#include	<signal.h>
#include	<stdio.h>
#include	<stdlib.h>
#include	<string.h>
#include	<sys/stat.h>	/* for S_xxx file mode constants */
#include	<unistd.h>
#include	<sys/wait.h>

/* message buffer for msgsnd and msgrcv calls */
struct msgbuf {
    long mtype;         /* type of message */
    char mtext[1];      /* message text */
};
int main(int argc, char *argv[])
{
    int  msqid;
	size_t len;
	long type;
	struct msgbuf *ptr;

	if (argc != 4)
	{
		perror("usage: msgsnd <pathname > <#byte> <type>");
		exit(1);
	}

	len = atoi(argv[2]);
	type = atoi(argv[3]);

	int ftok_ret = ftok(argv[1], 0);
	if(ftok_ret < 0)
	{
		perror("ftok");
		exit(1);
	}
	printf("key: %x\n", ftok_ret);
	msqid = msgget(ftok_ret, 0666);

	if (msqid < 0)
	{
		perror("msgget");
		return -1;
	}
	ptr = calloc(sizeof(long) + len, sizeof(char));
	if (ptr == NULL)
	{
		perror("calloc");
		return -1;
	}
	ptr->mtype = type;
    int ret = msgsnd(msqid, ptr, len, 0);
    if (ret < 0)
    {
        perror("msgsnd");
        return -1;
    }

    system("ipcs -q");
	exit(0);
}
