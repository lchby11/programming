
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
    servaddr.sin_port = htons(8888);
    if(argv[1] == NULL)
    {
        argv[1] = "127.0.0.1";
    }
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
    char sendbuf[1024] = "hello";
    while(1){
        fprintf(stderr, "write before\n");
		// 如果服务器期待接受一个换行符，而客户端迟迟不发送换行符，则服务器此时不能响应其他客户端的连接
        //if ((write(sockconn, "h", 1)) < 0)
        if ((write(sockconn, sendbuf, strlen(sendbuf))) < 0)
        {
            perror("write to socket error");
            exit(EXIT_FAILURE);
        }
        fprintf(stderr, "write after\n");
        pause();
    }

    close(sockconn); // 这里即使不close，在进程关闭的时候，仍然会会关闭
    return 0;
}
void handle_pipe(int sig)
{
    printf("receive pipe!\n");
}
