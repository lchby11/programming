
//  root@debian32-1:~/programming/linux/my_apue/memory_layout# gdb  -q  addr2line --core=core.11798
//  Reading symbols from addr2line...done.
//  [New LWP 11798]
//  Core was generated by `./addr2line'.
//  Program terminated with signal SIGFPE, Arithmetic exception.
//  #0  0x08048402 in func (a=10, b=0) at addr2line.c:21
//  21              return a / b;
//  (gdb)
//  
//    root@debian32-1:~/programming/linux/my_apue/memory_layout# addr2line -e addr2line 08048402
//    /root/programming/linux/my_apue/memory_layout/addr2line.c:5

// http://blog.csdn.net/olidrop/article/details/7295908

#include <stdio.h>

int func(int a, int b)
{
	return a / b;
}

int main()
{
	int x = 10;
	int y = 0;
	printf("%d / %d = %d\n", x, y, func(x, y));
	return 0;
}