main:
	echo echo正在编译 XXX 模块...... 
	@echo @echo正在编译 XXX 模块...... 

#	root@debian:~/programming/makefile# make -n -f echo.mk
#	echo echo正在编译 XXX 模块......
#	echo @echo正在编译 XXX 模块......

#	root@debian:~/programming/makefile# make  -f echo.mk
#	echo echo正在编译 XXX 模块......
#	echo正在编译 XXX 模块......
#	@echo正在编译 XXX 模块......

#	root@debian:~/programming/makefile# make -s -f echo.mk
#	echo正在编译 XXX 模块......
#	@echo正在编译 XXX 模块......



#	5.2 Recipe Echoing
#
#	Normally make prints each line of the recipe before it is executed. We call this echoing because it gives the appearance that you are typing the lines yourself.
#
#	When a line starts with ‘@’, the echoing of that line is suppressed. The ‘@’ is discarded before the line is passed to the shell. Typically you would use this for a command whose only effect is to print something, such as an echo command to indicate progress through the makefile:
#
#	@echo About to make distribution files
#	When make is given the flag ‘-n’ or ‘--just-print’ it only echoes most recipes, without executing them. See Summary of Options. In this case even the recipe lines starting with ‘@’ are printed. This flag is useful for finding out which recipes make thinks are necessary without actually doing them.
#
#	The ‘-s’ or ‘--silent’ flag to make prevents all echoing, as if all recipes started with ‘@’. A rule in the makefile for the special target .SILENT without prerequisites has the same effect (see Special Built-in Target Names). .SILENT is essentially obsolete since ‘@’ is more flexible.
#
