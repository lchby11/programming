
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
#include<arpa/inet.h>
#include<sys/socket.h>
#include<sys/types.h>
#include<netinet/in.h>
#include<signal.h>


void handle_pipe(int sig);
int main(int argc, char* argv[])
{
    struct sigaction action;
    action.sa_handler = handle_pipe;
    sigemptyset(&action.sa_mask);
    action.sa_flags = 0;
    sigaction(SIGPIPE, &action, NULL);
    int sockconn;
    struct sockaddr_in servaddr;
    if ((sockconn = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0)
    {
        perror("socket failure");
        exit(EXIT_FAILURE);
    }

    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(19);
    if (inet_aton(argv[1], &servaddr.sin_addr) == 0)
    {
        perror("inet_aton error");
        exit(EXIT_FAILURE);
    }

    if (connect(sockconn, (struct sockaddr*)&servaddr, sizeof(servaddr)) < 0)
    {
        perror("connnect error");
        exit(EXIT_FAILURE);
    }
    //shutdown(sockconn, SHUT_RD); // 这里即使不close，在进程关闭的时候，仍然会会关闭
    //shutdown(sockconn, SHUT_WR); // 这里即使不close，在进程关闭的时候，仍然会会关闭
    sleep(2);
    shutdown(sockconn, SHUT_RDWR); // 这里即使不close，在进程关闭的时候，仍然会会关闭
    //close(sockconn); // 这里即使不close，在进程关闭的时候，仍然会会关闭
    pause();
    return 0;
}
void handle_pipe(int sig)
{
    printf("receive pipe!\n");
}
