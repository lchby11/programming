	.file	"atomic.c"
	.local	count
	.comm	count,4,4
	.text
	.globl	test_func_nonatom
	.type	test_func_nonatom, @function
test_func_nonatom:

.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	count, %eax
	addl	$1, %eax
	movl	%eax, count
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	test_func_nonatom, .-test_func_nonatom
	.globl	test_func_atomic
	.type	test_func_atomic, @function
test_func_atomic:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	lock addl	$1, count
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	test_func_atomic, .-test_func_atomic
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
