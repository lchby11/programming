	.file	"const_fun.cpp"
	.text
.Ltext0:
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	" non const"
	.section	.text._ZN3Bar7bar_funEv,"axG",@progbits,_ZN3Bar7bar_funEv,comdat
	.align 2
	.weak	_ZN3Bar7bar_funEv
	.type	_ZN3Bar7bar_funEv, @function
_ZN3Bar7bar_funEv:
.LFB1020:
	.file 1 "const_fun.cpp"
	.loc 1 12 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 13 0
	movl	$.LC0, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	.loc 1 14 0
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 15 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1020:
	.size	_ZN3Bar7bar_funEv, .-_ZN3Bar7bar_funEv
	.section	.rodata
.LC1:
	.string	" const"
	.section	.text._ZNK3Bar7bar_funEv,"axG",@progbits,_ZNK3Bar7bar_funEv,comdat
	.align 2
	.weak	_ZNK3Bar7bar_funEv
	.type	_ZNK3Bar7bar_funEv, @function
_ZNK3Bar7bar_funEv:
.LFB1021:
	.loc 1 16 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 17 0
	movl	$.LC1, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	.loc 1 18 0
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 19 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1021:
	.size	_ZNK3Bar7bar_funEv, .-_ZNK3Bar7bar_funEv
	.text
	.globl	main
	.type	main, @function
main:
.LFB1022:
	.loc 1 24 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
.LBB2:
	.loc 1 27 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3Bar7bar_funEv
	.loc 1 32 0
	movl	-16(%rbp), %eax
	movl	%eax, -32(%rbp)
	.loc 1 33 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK3Bar7bar_funEv
	.loc 1 36 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3Bar7bar_funEv
	.loc 1 38 0
	movl	$0, %eax
.LBE2:
	.loc 1 39 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1022:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1031:
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 39 0
	cmpl	$1, -4(%rbp)
	jne	.L7
	.loc 1 39 0 is_stmt 0 discriminator 1
	cmpl	$65535, -8(%rbp)
	jne	.L7
	.file 2 "/usr/include/c++/4.9/iostream"
	.loc 2 74 0 is_stmt 1
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L7:
	.loc 1 39 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1031:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB1032:
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 39 0
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1032:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.text
.Letext0:
	.file 3 "<built-in>"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.9/include/stddef.h"
	.file 6 "/usr/include/wchar.h"
	.file 7 "/usr/include/c++/4.9/cwchar"
	.file 8 "/usr/include/c++/4.9/bits/char_traits.h"
	.file 9 "/usr/include/x86_64-linux-gnu/c++/4.9/bits/c++config.h"
	.file 10 "/usr/include/c++/4.9/clocale"
	.file 11 "/usr/include/c++/4.9/bits/ios_base.h"
	.file 12 "/usr/include/c++/4.9/cwctype"
	.file 13 "/usr/include/c++/4.9/iosfwd"
	.file 14 "/usr/include/time.h"
	.file 15 "/usr/include/c++/4.9/debug/debug.h"
	.file 16 "/usr/include/c++/4.9/bits/predefined_ops.h"
	.file 17 "/usr/include/c++/4.9/ext/new_allocator.h"
	.file 18 "/usr/include/c++/4.9/ext/numeric_traits.h"
	.file 19 "/usr/include/locale.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 21 "/usr/include/x86_64-linux-gnu/c++/4.9/bits/atomic_word.h"
	.file 22 "/usr/include/wctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x164a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF262
	.byte	0x4
	.long	.LASF263
	.long	.LASF264
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF265
	.uleb128 0x3
	.long	.LASF6
	.byte	0x4
	.byte	0x40
	.long	0x29
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x5
	.long	.LASF18
	.byte	0x18
	.byte	0x3
	.byte	0
	.long	0x7d
	.uleb128 0x6
	.long	.LASF0
	.byte	0x3
	.byte	0
	.long	0x7d
	.byte	0
	.uleb128 0x6
	.long	.LASF1
	.byte	0x3
	.byte	0
	.long	0x7d
	.byte	0x4
	.uleb128 0x6
	.long	.LASF2
	.byte	0x3
	.byte	0
	.long	0x84
	.byte	0x8
	.uleb128 0x6
	.long	.LASF3
	.byte	0x3
	.byte	0
	.long	0x84
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x3
	.long	.LASF7
	.byte	0x5
	.byte	0xd4
	.long	0x91
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x8
	.long	.LASF9
	.byte	0x5
	.value	0x161
	.long	0x7d
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0x53
	.long	.LASF266
	.long	0xe8
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0x56
	.long	0xcf
	.uleb128 0xb
	.long	.LASF10
	.byte	0x6
	.byte	0x58
	.long	0x7d
	.uleb128 0xb
	.long	.LASF11
	.byte	0x6
	.byte	0x5c
	.long	0xe8
	.byte	0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x6
	.byte	0x54
	.long	0xff
	.byte	0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x6
	.byte	0x5d
	.long	0xb0
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	0xf8
	.long	0xf8
	.uleb128 0xd
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF15
	.byte	0x6
	.byte	0x5e
	.long	0xa4
	.uleb128 0x3
	.long	.LASF16
	.byte	0x6
	.byte	0x6a
	.long	0x106
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF17
	.uleb128 0xf
	.long	0xff
	.uleb128 0x10
	.byte	0x8
	.long	0x12e
	.uleb128 0xf
	.long	0xf8
	.uleb128 0x11
	.string	"std"
	.byte	0x3
	.byte	0
	.long	0x8d5
	.uleb128 0x12
	.byte	0x7
	.byte	0x40
	.long	0x111
	.uleb128 0x12
	.byte	0x7
	.byte	0x8b
	.long	0x98
	.uleb128 0x12
	.byte	0x7
	.byte	0x8d
	.long	0x8d5
	.uleb128 0x12
	.byte	0x7
	.byte	0x8e
	.long	0x8eb
	.uleb128 0x12
	.byte	0x7
	.byte	0x8f
	.long	0x907
	.uleb128 0x12
	.byte	0x7
	.byte	0x90
	.long	0x934
	.uleb128 0x12
	.byte	0x7
	.byte	0x91
	.long	0x94f
	.uleb128 0x12
	.byte	0x7
	.byte	0x92
	.long	0x975
	.uleb128 0x12
	.byte	0x7
	.byte	0x93
	.long	0x990
	.uleb128 0x12
	.byte	0x7
	.byte	0x94
	.long	0x9ac
	.uleb128 0x12
	.byte	0x7
	.byte	0x95
	.long	0x9c8
	.uleb128 0x12
	.byte	0x7
	.byte	0x96
	.long	0x9de
	.uleb128 0x12
	.byte	0x7
	.byte	0x97
	.long	0x9ea
	.uleb128 0x12
	.byte	0x7
	.byte	0x98
	.long	0xa10
	.uleb128 0x12
	.byte	0x7
	.byte	0x99
	.long	0xa35
	.uleb128 0x12
	.byte	0x7
	.byte	0x9a
	.long	0xa56
	.uleb128 0x12
	.byte	0x7
	.byte	0x9b
	.long	0xa81
	.uleb128 0x12
	.byte	0x7
	.byte	0x9c
	.long	0xa9c
	.uleb128 0x12
	.byte	0x7
	.byte	0x9e
	.long	0xab2
	.uleb128 0x12
	.byte	0x7
	.byte	0xa0
	.long	0xad3
	.uleb128 0x12
	.byte	0x7
	.byte	0xa1
	.long	0xaef
	.uleb128 0x12
	.byte	0x7
	.byte	0xa2
	.long	0xb0a
	.uleb128 0x12
	.byte	0x7
	.byte	0xa4
	.long	0xb30
	.uleb128 0x12
	.byte	0x7
	.byte	0xa7
	.long	0xb50
	.uleb128 0x12
	.byte	0x7
	.byte	0xaa
	.long	0xb75
	.uleb128 0x12
	.byte	0x7
	.byte	0xac
	.long	0xb95
	.uleb128 0x12
	.byte	0x7
	.byte	0xae
	.long	0xbb0
	.uleb128 0x12
	.byte	0x7
	.byte	0xb0
	.long	0xbcb
	.uleb128 0x12
	.byte	0x7
	.byte	0xb1
	.long	0xbf1
	.uleb128 0x12
	.byte	0x7
	.byte	0xb2
	.long	0xc0b
	.uleb128 0x12
	.byte	0x7
	.byte	0xb3
	.long	0xc25
	.uleb128 0x12
	.byte	0x7
	.byte	0xb4
	.long	0xc3f
	.uleb128 0x12
	.byte	0x7
	.byte	0xb5
	.long	0xc59
	.uleb128 0x12
	.byte	0x7
	.byte	0xb6
	.long	0xc73
	.uleb128 0x12
	.byte	0x7
	.byte	0xb7
	.long	0xd33
	.uleb128 0x12
	.byte	0x7
	.byte	0xb8
	.long	0xd49
	.uleb128 0x12
	.byte	0x7
	.byte	0xb9
	.long	0xd68
	.uleb128 0x12
	.byte	0x7
	.byte	0xba
	.long	0xd87
	.uleb128 0x12
	.byte	0x7
	.byte	0xbb
	.long	0xda6
	.uleb128 0x12
	.byte	0x7
	.byte	0xbc
	.long	0xdd1
	.uleb128 0x12
	.byte	0x7
	.byte	0xbd
	.long	0xdec
	.uleb128 0x12
	.byte	0x7
	.byte	0xbf
	.long	0xe14
	.uleb128 0x12
	.byte	0x7
	.byte	0xc1
	.long	0xe36
	.uleb128 0x12
	.byte	0x7
	.byte	0xc2
	.long	0xe56
	.uleb128 0x12
	.byte	0x7
	.byte	0xc3
	.long	0xe7d
	.uleb128 0x12
	.byte	0x7
	.byte	0xc4
	.long	0xe9d
	.uleb128 0x12
	.byte	0x7
	.byte	0xc5
	.long	0xebc
	.uleb128 0x12
	.byte	0x7
	.byte	0xc6
	.long	0xed2
	.uleb128 0x12
	.byte	0x7
	.byte	0xc7
	.long	0xef2
	.uleb128 0x12
	.byte	0x7
	.byte	0xc8
	.long	0xf12
	.uleb128 0x12
	.byte	0x7
	.byte	0xc9
	.long	0xf32
	.uleb128 0x12
	.byte	0x7
	.byte	0xca
	.long	0xf52
	.uleb128 0x12
	.byte	0x7
	.byte	0xcb
	.long	0xf69
	.uleb128 0x12
	.byte	0x7
	.byte	0xcc
	.long	0xf80
	.uleb128 0x12
	.byte	0x7
	.byte	0xcd
	.long	0xf9e
	.uleb128 0x12
	.byte	0x7
	.byte	0xce
	.long	0xfbd
	.uleb128 0x12
	.byte	0x7
	.byte	0xcf
	.long	0xfdb
	.uleb128 0x12
	.byte	0x7
	.byte	0xd0
	.long	0xffa
	.uleb128 0x13
	.byte	0x7
	.value	0x108
	.long	0x119c
	.uleb128 0x13
	.byte	0x7
	.value	0x109
	.long	0x11be
	.uleb128 0x13
	.byte	0x7
	.value	0x10a
	.long	0x11e5
	.uleb128 0x14
	.long	.LASF186
	.byte	0xf
	.byte	0x30
	.uleb128 0x5
	.long	.LASF19
	.byte	0x1
	.byte	0x8
	.byte	0xe9
	.long	0x4bb
	.uleb128 0x3
	.long	.LASF20
	.byte	0x8
	.byte	0xeb
	.long	0xf8
	.uleb128 0x3
	.long	.LASF21
	.byte	0x8
	.byte	0xec
	.long	0xff
	.uleb128 0x15
	.long	.LASF34
	.byte	0x8
	.byte	0xf2
	.long	.LASF267
	.long	0x32f
	.uleb128 0x16
	.long	0x1234
	.uleb128 0x16
	.long	0x123a
	.byte	0
	.uleb128 0xf
	.long	0x2ff
	.uleb128 0x17
	.string	"eq"
	.byte	0x8
	.byte	0xf6
	.long	.LASF22
	.long	0x1240
	.long	0x351
	.uleb128 0x16
	.long	0x123a
	.uleb128 0x16
	.long	0x123a
	.byte	0
	.uleb128 0x17
	.string	"lt"
	.byte	0x8
	.byte	0xfa
	.long	.LASF23
	.long	0x1240
	.long	0x36e
	.uleb128 0x16
	.long	0x123a
	.uleb128 0x16
	.long	0x123a
	.byte	0
	.uleb128 0x18
	.long	.LASF24
	.byte	0x8
	.value	0x102
	.long	.LASF26
	.long	0xff
	.long	0x392
	.uleb128 0x16
	.long	0x1247
	.uleb128 0x16
	.long	0x1247
	.uleb128 0x16
	.long	0x4bb
	.byte	0
	.uleb128 0x18
	.long	.LASF25
	.byte	0x8
	.value	0x106
	.long	.LASF27
	.long	0x4bb
	.long	0x3ac
	.uleb128 0x16
	.long	0x1247
	.byte	0
	.uleb128 0x18
	.long	.LASF28
	.byte	0x8
	.value	0x10a
	.long	.LASF29
	.long	0x1247
	.long	0x3d0
	.uleb128 0x16
	.long	0x1247
	.uleb128 0x16
	.long	0x4bb
	.uleb128 0x16
	.long	0x123a
	.byte	0
	.uleb128 0x18
	.long	.LASF30
	.byte	0x8
	.value	0x10e
	.long	.LASF31
	.long	0x124d
	.long	0x3f4
	.uleb128 0x16
	.long	0x124d
	.uleb128 0x16
	.long	0x1247
	.uleb128 0x16
	.long	0x4bb
	.byte	0
	.uleb128 0x18
	.long	.LASF32
	.byte	0x8
	.value	0x112
	.long	.LASF33
	.long	0x124d
	.long	0x418
	.uleb128 0x16
	.long	0x124d
	.uleb128 0x16
	.long	0x1247
	.uleb128 0x16
	.long	0x4bb
	.byte	0
	.uleb128 0x18
	.long	.LASF34
	.byte	0x8
	.value	0x116
	.long	.LASF35
	.long	0x124d
	.long	0x43c
	.uleb128 0x16
	.long	0x124d
	.uleb128 0x16
	.long	0x4bb
	.uleb128 0x16
	.long	0x2ff
	.byte	0
	.uleb128 0x18
	.long	.LASF36
	.byte	0x8
	.value	0x11a
	.long	.LASF37
	.long	0x2ff
	.long	0x456
	.uleb128 0x16
	.long	0x1253
	.byte	0
	.uleb128 0xf
	.long	0x30a
	.uleb128 0x18
	.long	.LASF38
	.byte	0x8
	.value	0x120
	.long	.LASF39
	.long	0x30a
	.long	0x475
	.uleb128 0x16
	.long	0x123a
	.byte	0
	.uleb128 0x18
	.long	.LASF40
	.byte	0x8
	.value	0x124
	.long	.LASF41
	.long	0x1240
	.long	0x494
	.uleb128 0x16
	.long	0x1253
	.uleb128 0x16
	.long	0x1253
	.byte	0
	.uleb128 0x19
	.string	"eof"
	.byte	0x8
	.value	0x128
	.long	.LASF268
	.long	0x30a
	.uleb128 0x1a
	.long	.LASF42
	.byte	0x8
	.value	0x12c
	.long	.LASF269
	.long	0x30a
	.uleb128 0x16
	.long	0x1253
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF7
	.byte	0x9
	.byte	0xbc
	.long	0x91
	.uleb128 0x12
	.byte	0xa
	.byte	0x35
	.long	0x1259
	.uleb128 0x12
	.byte	0xa
	.byte	0x36
	.long	0x1386
	.uleb128 0x12
	.byte	0xa
	.byte	0x37
	.long	0x13a0
	.uleb128 0x3
	.long	.LASF43
	.byte	0x9
	.byte	0xbd
	.long	0xe76
	.uleb128 0x1b
	.long	.LASF63
	.byte	0x4
	.byte	0xb
	.byte	0x33
	.long	0x575
	.uleb128 0x1c
	.long	.LASF44
	.sleb128 1
	.uleb128 0x1c
	.long	.LASF45
	.sleb128 2
	.uleb128 0x1c
	.long	.LASF46
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF47
	.sleb128 8
	.uleb128 0x1c
	.long	.LASF48
	.sleb128 16
	.uleb128 0x1c
	.long	.LASF49
	.sleb128 32
	.uleb128 0x1c
	.long	.LASF50
	.sleb128 64
	.uleb128 0x1c
	.long	.LASF51
	.sleb128 128
	.uleb128 0x1c
	.long	.LASF52
	.sleb128 256
	.uleb128 0x1c
	.long	.LASF53
	.sleb128 512
	.uleb128 0x1c
	.long	.LASF54
	.sleb128 1024
	.uleb128 0x1c
	.long	.LASF55
	.sleb128 2048
	.uleb128 0x1c
	.long	.LASF56
	.sleb128 4096
	.uleb128 0x1c
	.long	.LASF57
	.sleb128 8192
	.uleb128 0x1c
	.long	.LASF58
	.sleb128 16384
	.uleb128 0x1c
	.long	.LASF59
	.sleb128 176
	.uleb128 0x1c
	.long	.LASF60
	.sleb128 74
	.uleb128 0x1c
	.long	.LASF61
	.sleb128 260
	.uleb128 0x1c
	.long	.LASF62
	.sleb128 65536
	.byte	0
	.uleb128 0x1b
	.long	.LASF64
	.byte	0x4
	.byte	0xb
	.byte	0x67
	.long	0x5ae
	.uleb128 0x1c
	.long	.LASF65
	.sleb128 1
	.uleb128 0x1c
	.long	.LASF66
	.sleb128 2
	.uleb128 0x1c
	.long	.LASF67
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF68
	.sleb128 8
	.uleb128 0x1c
	.long	.LASF69
	.sleb128 16
	.uleb128 0x1c
	.long	.LASF70
	.sleb128 32
	.uleb128 0x1c
	.long	.LASF71
	.sleb128 65536
	.byte	0
	.uleb128 0x1b
	.long	.LASF72
	.byte	0x4
	.byte	0xb
	.byte	0x8f
	.long	0x5db
	.uleb128 0x1c
	.long	.LASF73
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF74
	.sleb128 1
	.uleb128 0x1c
	.long	.LASF75
	.sleb128 2
	.uleb128 0x1c
	.long	.LASF76
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF77
	.sleb128 65536
	.byte	0
	.uleb128 0x1b
	.long	.LASF78
	.byte	0x4
	.byte	0xb
	.byte	0xb5
	.long	0x602
	.uleb128 0x1c
	.long	.LASF79
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF80
	.sleb128 1
	.uleb128 0x1c
	.long	.LASF81
	.sleb128 2
	.uleb128 0x1c
	.long	.LASF82
	.sleb128 65536
	.byte	0
	.uleb128 0x1d
	.long	.LASF112
	.long	0x862
	.uleb128 0x1e
	.long	.LASF85
	.byte	0x1
	.byte	0xb
	.value	0x215
	.byte	0x1
	.long	0x661
	.uleb128 0x1f
	.long	.LASF83
	.byte	0xb
	.value	0x21d
	.long	0x13bc
	.uleb128 0x1f
	.long	.LASF84
	.byte	0xb
	.value	0x21e
	.long	0x1240
	.uleb128 0x20
	.long	.LASF85
	.byte	0xb
	.value	0x219
	.byte	0x1
	.long	0x642
	.long	0x648
	.uleb128 0x21
	.long	0x13d1
	.byte	0
	.uleb128 0x22
	.long	.LASF86
	.byte	0xb
	.value	0x21a
	.byte	0x1
	.long	0x655
	.uleb128 0x21
	.long	0x13d1
	.uleb128 0x21
	.long	0xff
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF102
	.byte	0xb
	.byte	0xff
	.long	0x4e6
	.byte	0x1
	.uleb128 0x24
	.long	.LASF87
	.byte	0xb
	.value	0x102
	.long	0x67b
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x661
	.uleb128 0x25
	.string	"dec"
	.byte	0xb
	.value	0x105
	.long	0x67b
	.byte	0x1
	.byte	0x2
	.uleb128 0x24
	.long	.LASF88
	.byte	0xb
	.value	0x108
	.long	0x67b
	.byte	0x1
	.byte	0x4
	.uleb128 0x25
	.string	"hex"
	.byte	0xb
	.value	0x10b
	.long	0x67b
	.byte	0x1
	.byte	0x8
	.uleb128 0x24
	.long	.LASF89
	.byte	0xb
	.value	0x110
	.long	0x67b
	.byte	0x1
	.byte	0x10
	.uleb128 0x24
	.long	.LASF90
	.byte	0xb
	.value	0x114
	.long	0x67b
	.byte	0x1
	.byte	0x20
	.uleb128 0x25
	.string	"oct"
	.byte	0xb
	.value	0x117
	.long	0x67b
	.byte	0x1
	.byte	0x40
	.uleb128 0x24
	.long	.LASF91
	.byte	0xb
	.value	0x11b
	.long	0x67b
	.byte	0x1
	.byte	0x80
	.uleb128 0x26
	.long	.LASF92
	.byte	0xb
	.value	0x11e
	.long	0x67b
	.byte	0x1
	.value	0x100
	.uleb128 0x26
	.long	.LASF93
	.byte	0xb
	.value	0x122
	.long	0x67b
	.byte	0x1
	.value	0x200
	.uleb128 0x26
	.long	.LASF94
	.byte	0xb
	.value	0x126
	.long	0x67b
	.byte	0x1
	.value	0x400
	.uleb128 0x26
	.long	.LASF95
	.byte	0xb
	.value	0x129
	.long	0x67b
	.byte	0x1
	.value	0x800
	.uleb128 0x26
	.long	.LASF96
	.byte	0xb
	.value	0x12c
	.long	0x67b
	.byte	0x1
	.value	0x1000
	.uleb128 0x26
	.long	.LASF97
	.byte	0xb
	.value	0x12f
	.long	0x67b
	.byte	0x1
	.value	0x2000
	.uleb128 0x26
	.long	.LASF98
	.byte	0xb
	.value	0x133
	.long	0x67b
	.byte	0x1
	.value	0x4000
	.uleb128 0x24
	.long	.LASF99
	.byte	0xb
	.value	0x136
	.long	0x67b
	.byte	0x1
	.byte	0xb0
	.uleb128 0x24
	.long	.LASF100
	.byte	0xb
	.value	0x139
	.long	0x67b
	.byte	0x1
	.byte	0x4a
	.uleb128 0x26
	.long	.LASF101
	.byte	0xb
	.value	0x13c
	.long	0x67b
	.byte	0x1
	.value	0x104
	.uleb128 0x27
	.long	.LASF103
	.byte	0xb
	.value	0x14a
	.long	0x5ae
	.byte	0x1
	.uleb128 0x24
	.long	.LASF104
	.byte	0xb
	.value	0x14e
	.long	0x791
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x776
	.uleb128 0x24
	.long	.LASF105
	.byte	0xb
	.value	0x151
	.long	0x791
	.byte	0x1
	.byte	0x2
	.uleb128 0x24
	.long	.LASF106
	.byte	0xb
	.value	0x156
	.long	0x791
	.byte	0x1
	.byte	0x4
	.uleb128 0x24
	.long	.LASF107
	.byte	0xb
	.value	0x159
	.long	0x791
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.long	.LASF108
	.byte	0xb
	.value	0x169
	.long	0x575
	.byte	0x1
	.uleb128 0x25
	.string	"app"
	.byte	0xb
	.value	0x16c
	.long	0x7db
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x7c0
	.uleb128 0x25
	.string	"ate"
	.byte	0xb
	.value	0x16f
	.long	0x7db
	.byte	0x1
	.byte	0x2
	.uleb128 0x24
	.long	.LASF109
	.byte	0xb
	.value	0x174
	.long	0x7db
	.byte	0x1
	.byte	0x4
	.uleb128 0x25
	.string	"in"
	.byte	0xb
	.value	0x177
	.long	0x7db
	.byte	0x1
	.byte	0x8
	.uleb128 0x25
	.string	"out"
	.byte	0xb
	.value	0x17a
	.long	0x7db
	.byte	0x1
	.byte	0x10
	.uleb128 0x24
	.long	.LASF110
	.byte	0xb
	.value	0x17d
	.long	0x7db
	.byte	0x1
	.byte	0x20
	.uleb128 0x27
	.long	.LASF111
	.byte	0xb
	.value	0x189
	.long	0x5db
	.byte	0x1
	.uleb128 0x25
	.string	"beg"
	.byte	0xb
	.value	0x18c
	.long	0x840
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	0x825
	.uleb128 0x25
	.string	"cur"
	.byte	0xb
	.value	0x18f
	.long	0x840
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"end"
	.byte	0xb
	.value	0x192
	.long	0x840
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.byte	0xc
	.byte	0x52
	.long	0x13e2
	.uleb128 0x12
	.byte	0xc
	.byte	0x53
	.long	0x13d7
	.uleb128 0x12
	.byte	0xc
	.byte	0x54
	.long	0x98
	.uleb128 0x12
	.byte	0xc
	.byte	0x5c
	.long	0x13f8
	.uleb128 0x12
	.byte	0xc
	.byte	0x65
	.long	0x1412
	.uleb128 0x12
	.byte	0xc
	.byte	0x68
	.long	0x142c
	.uleb128 0x12
	.byte	0xc
	.byte	0x69
	.long	0x1441
	.uleb128 0x1d
	.long	.LASF113
	.long	0x8af
	.uleb128 0x28
	.long	.LASF193
	.long	0xf8
	.uleb128 0x29
	.long	.LASF270
	.long	0x2f3
	.byte	0
	.uleb128 0x3
	.long	.LASF114
	.byte	0xd
	.byte	0x88
	.long	0x893
	.uleb128 0x2a
	.long	.LASF271
	.byte	0x2
	.byte	0x3d
	.long	.LASF272
	.long	0x8af
	.uleb128 0x2b
	.long	.LASF249
	.byte	0x2
	.byte	0x4a
	.long	0x60b
	.byte	0
	.uleb128 0x2c
	.long	.LASF115
	.byte	0x6
	.value	0x161
	.long	0x98
	.long	0x8eb
	.uleb128 0x16
	.long	0xff
	.byte	0
	.uleb128 0x2c
	.long	.LASF116
	.byte	0x6
	.value	0x2e9
	.long	0x98
	.long	0x901
	.uleb128 0x16
	.long	0x901
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x2e
	.uleb128 0x2c
	.long	.LASF117
	.byte	0x6
	.value	0x306
	.long	0x927
	.long	0x927
	.uleb128 0x16
	.long	0x927
	.uleb128 0x16
	.long	0xff
	.uleb128 0x16
	.long	0x901
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x92d
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF118
	.uleb128 0x2c
	.long	.LASF119
	.byte	0x6
	.value	0x2f7
	.long	0x98
	.long	0x94f
	.uleb128 0x16
	.long	0x92d
	.uleb128 0x16
	.long	0x901
	.byte	0
	.uleb128 0x2c
	.long	.LASF120
	.byte	0x6
	.value	0x30d
	.long	0xff
	.long	0x96a
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x901
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x970
	.uleb128 0xf
	.long	0x92d
	.uleb128 0x2c
	.long	.LASF121
	.byte	0x6
	.value	0x24b
	.long	0xff
	.long	0x990
	.uleb128 0x16
	.long	0x901
	.uleb128 0x16
	.long	0xff
	.byte	0
	.uleb128 0x2c
	.long	.LASF122
	.byte	0x6
	.value	0x252
	.long	0xff
	.long	0x9ac
	.uleb128 0x16
	.long	0x901
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2c
	.long	.LASF123
	.byte	0x6
	.value	0x27b
	.long	0xff
	.long	0x9c8
	.uleb128 0x16
	.long	0x901
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2c
	.long	.LASF124
	.byte	0x6
	.value	0x2ea
	.long	0x98
	.long	0x9de
	.uleb128 0x16
	.long	0x901
	.byte	0
	.uleb128 0x2e
	.long	.LASF235
	.byte	0x6
	.value	0x2f0
	.long	0x98
	.uleb128 0x2c
	.long	.LASF125
	.byte	0x6
	.value	0x178
	.long	0x86
	.long	0xa0a
	.uleb128 0x16
	.long	0x128
	.uleb128 0x16
	.long	0x86
	.uleb128 0x16
	.long	0xa0a
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x111
	.uleb128 0x2c
	.long	.LASF126
	.byte	0x6
	.value	0x16d
	.long	0x86
	.long	0xa35
	.uleb128 0x16
	.long	0x927
	.uleb128 0x16
	.long	0x128
	.uleb128 0x16
	.long	0x86
	.uleb128 0x16
	.long	0xa0a
	.byte	0
	.uleb128 0x2c
	.long	.LASF127
	.byte	0x6
	.value	0x169
	.long	0xff
	.long	0xa4b
	.uleb128 0x16
	.long	0xa4b
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xa51
	.uleb128 0xf
	.long	0x111
	.uleb128 0x2c
	.long	.LASF128
	.byte	0x6
	.value	0x198
	.long	0x86
	.long	0xa7b
	.uleb128 0x16
	.long	0x927
	.uleb128 0x16
	.long	0xa7b
	.uleb128 0x16
	.long	0x86
	.uleb128 0x16
	.long	0xa0a
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x128
	.uleb128 0x2c
	.long	.LASF129
	.byte	0x6
	.value	0x2f8
	.long	0x98
	.long	0xa9c
	.uleb128 0x16
	.long	0x92d
	.uleb128 0x16
	.long	0x901
	.byte	0
	.uleb128 0x2c
	.long	.LASF130
	.byte	0x6
	.value	0x2fe
	.long	0x98
	.long	0xab2
	.uleb128 0x16
	.long	0x92d
	.byte	0
	.uleb128 0x2c
	.long	.LASF131
	.byte	0x6
	.value	0x25c
	.long	0xff
	.long	0xad3
	.uleb128 0x16
	.long	0x927
	.uleb128 0x16
	.long	0x86
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2c
	.long	.LASF132
	.byte	0x6
	.value	0x285
	.long	0xff
	.long	0xaef
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2c
	.long	.LASF133
	.byte	0x6
	.value	0x315
	.long	0x98
	.long	0xb0a
	.uleb128 0x16
	.long	0x98
	.uleb128 0x16
	.long	0x901
	.byte	0
	.uleb128 0x2c
	.long	.LASF134
	.byte	0x6
	.value	0x264
	.long	0xff
	.long	0xb2a
	.uleb128 0x16
	.long	0x901
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0xb2a
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x40
	.uleb128 0x2c
	.long	.LASF135
	.byte	0x6
	.value	0x2b1
	.long	0xff
	.long	0xb50
	.uleb128 0x16
	.long	0x901
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0xb2a
	.byte	0
	.uleb128 0x2c
	.long	.LASF136
	.byte	0x6
	.value	0x271
	.long	0xff
	.long	0xb75
	.uleb128 0x16
	.long	0x927
	.uleb128 0x16
	.long	0x86
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0xb2a
	.byte	0
	.uleb128 0x2c
	.long	.LASF137
	.byte	0x6
	.value	0x2bd
	.long	0xff
	.long	0xb95
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0xb2a
	.byte	0
	.uleb128 0x2c
	.long	.LASF138
	.byte	0x6
	.value	0x26c
	.long	0xff
	.long	0xbb0
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0xb2a
	.byte	0
	.uleb128 0x2c
	.long	.LASF139
	.byte	0x6
	.value	0x2b9
	.long	0xff
	.long	0xbcb
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0xb2a
	.byte	0
	.uleb128 0x2c
	.long	.LASF140
	.byte	0x6
	.value	0x172
	.long	0x86
	.long	0xbeb
	.uleb128 0x16
	.long	0xbeb
	.uleb128 0x16
	.long	0x92d
	.uleb128 0x16
	.long	0xa0a
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xf8
	.uleb128 0x2f
	.long	.LASF141
	.byte	0x6
	.byte	0x9b
	.long	0x927
	.long	0xc0b
	.uleb128 0x16
	.long	0x927
	.uleb128 0x16
	.long	0x96a
	.byte	0
	.uleb128 0x2f
	.long	.LASF142
	.byte	0x6
	.byte	0xa3
	.long	0xff
	.long	0xc25
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x96a
	.byte	0
	.uleb128 0x2f
	.long	.LASF143
	.byte	0x6
	.byte	0xc0
	.long	0xff
	.long	0xc3f
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x96a
	.byte	0
	.uleb128 0x2f
	.long	.LASF144
	.byte	0x6
	.byte	0x93
	.long	0x927
	.long	0xc59
	.uleb128 0x16
	.long	0x927
	.uleb128 0x16
	.long	0x96a
	.byte	0
	.uleb128 0x2f
	.long	.LASF145
	.byte	0x6
	.byte	0xfc
	.long	0x86
	.long	0xc73
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x96a
	.byte	0
	.uleb128 0x2c
	.long	.LASF146
	.byte	0x6
	.value	0x357
	.long	0x86
	.long	0xc98
	.uleb128 0x16
	.long	0x927
	.uleb128 0x16
	.long	0x86
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0xc98
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xc9e
	.uleb128 0xf
	.long	0xca3
	.uleb128 0x30
	.string	"tm"
	.byte	0x38
	.byte	0xe
	.byte	0x85
	.long	0xd33
	.uleb128 0x6
	.long	.LASF147
	.byte	0xe
	.byte	0x87
	.long	0xff
	.byte	0
	.uleb128 0x6
	.long	.LASF148
	.byte	0xe
	.byte	0x88
	.long	0xff
	.byte	0x4
	.uleb128 0x6
	.long	.LASF149
	.byte	0xe
	.byte	0x89
	.long	0xff
	.byte	0x8
	.uleb128 0x6
	.long	.LASF150
	.byte	0xe
	.byte	0x8a
	.long	0xff
	.byte	0xc
	.uleb128 0x6
	.long	.LASF151
	.byte	0xe
	.byte	0x8b
	.long	0xff
	.byte	0x10
	.uleb128 0x6
	.long	.LASF152
	.byte	0xe
	.byte	0x8c
	.long	0xff
	.byte	0x14
	.uleb128 0x6
	.long	.LASF153
	.byte	0xe
	.byte	0x8d
	.long	0xff
	.byte	0x18
	.uleb128 0x6
	.long	.LASF154
	.byte	0xe
	.byte	0x8e
	.long	0xff
	.byte	0x1c
	.uleb128 0x6
	.long	.LASF155
	.byte	0xe
	.byte	0x8f
	.long	0xff
	.byte	0x20
	.uleb128 0x6
	.long	.LASF156
	.byte	0xe
	.byte	0x92
	.long	0xe76
	.byte	0x28
	.uleb128 0x6
	.long	.LASF157
	.byte	0xe
	.byte	0x93
	.long	0x128
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.long	.LASF158
	.byte	0x6
	.value	0x11f
	.long	0x86
	.long	0xd49
	.uleb128 0x16
	.long	0x96a
	.byte	0
	.uleb128 0x2f
	.long	.LASF159
	.byte	0x6
	.byte	0x9e
	.long	0x927
	.long	0xd68
	.uleb128 0x16
	.long	0x927
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x86
	.byte	0
	.uleb128 0x2f
	.long	.LASF160
	.byte	0x6
	.byte	0xa6
	.long	0xff
	.long	0xd87
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x86
	.byte	0
	.uleb128 0x2f
	.long	.LASF161
	.byte	0x6
	.byte	0x96
	.long	0x927
	.long	0xda6
	.uleb128 0x16
	.long	0x927
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x86
	.byte	0
	.uleb128 0x2c
	.long	.LASF162
	.byte	0x6
	.value	0x19e
	.long	0x86
	.long	0xdcb
	.uleb128 0x16
	.long	0xbeb
	.uleb128 0x16
	.long	0xdcb
	.uleb128 0x16
	.long	0x86
	.uleb128 0x16
	.long	0xa0a
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x96a
	.uleb128 0x2c
	.long	.LASF163
	.byte	0x6
	.value	0x100
	.long	0x86
	.long	0xdec
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x96a
	.byte	0
	.uleb128 0x2c
	.long	.LASF164
	.byte	0x6
	.value	0x1c2
	.long	0xe07
	.long	0xe07
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0xe0e
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF165
	.uleb128 0x10
	.byte	0x8
	.long	0x927
	.uleb128 0x2c
	.long	.LASF166
	.byte	0x6
	.value	0x1c9
	.long	0xe2f
	.long	0xe2f
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0xe0e
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF167
	.uleb128 0x2c
	.long	.LASF168
	.byte	0x6
	.value	0x11a
	.long	0x927
	.long	0xe56
	.uleb128 0x16
	.long	0x927
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0xe0e
	.byte	0
	.uleb128 0x2c
	.long	.LASF169
	.byte	0x6
	.value	0x1d4
	.long	0xe76
	.long	0xe76
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0xe0e
	.uleb128 0x16
	.long	0xff
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF170
	.uleb128 0x2c
	.long	.LASF171
	.byte	0x6
	.value	0x1d9
	.long	0x91
	.long	0xe9d
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0xe0e
	.uleb128 0x16
	.long	0xff
	.byte	0
	.uleb128 0x2f
	.long	.LASF172
	.byte	0x6
	.byte	0xc4
	.long	0x86
	.long	0xebc
	.uleb128 0x16
	.long	0x927
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x86
	.byte	0
	.uleb128 0x2c
	.long	.LASF173
	.byte	0x6
	.value	0x165
	.long	0xff
	.long	0xed2
	.uleb128 0x16
	.long	0x98
	.byte	0
	.uleb128 0x2c
	.long	.LASF174
	.byte	0x6
	.value	0x145
	.long	0xff
	.long	0xef2
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x86
	.byte	0
	.uleb128 0x2c
	.long	.LASF175
	.byte	0x6
	.value	0x149
	.long	0x927
	.long	0xf12
	.uleb128 0x16
	.long	0x927
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x86
	.byte	0
	.uleb128 0x2c
	.long	.LASF176
	.byte	0x6
	.value	0x14e
	.long	0x927
	.long	0xf32
	.uleb128 0x16
	.long	0x927
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x86
	.byte	0
	.uleb128 0x2c
	.long	.LASF177
	.byte	0x6
	.value	0x152
	.long	0x927
	.long	0xf52
	.uleb128 0x16
	.long	0x927
	.uleb128 0x16
	.long	0x92d
	.uleb128 0x16
	.long	0x86
	.byte	0
	.uleb128 0x2c
	.long	.LASF178
	.byte	0x6
	.value	0x259
	.long	0xff
	.long	0xf69
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2c
	.long	.LASF179
	.byte	0x6
	.value	0x282
	.long	0xff
	.long	0xf80
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x2d
	.byte	0
	.uleb128 0x31
	.long	.LASF180
	.byte	0x6
	.byte	0xe0
	.long	.LASF180
	.long	0x96a
	.long	0xf9e
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x92d
	.byte	0
	.uleb128 0x18
	.long	.LASF181
	.byte	0x6
	.value	0x106
	.long	.LASF181
	.long	0x96a
	.long	0xfbd
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x96a
	.byte	0
	.uleb128 0x31
	.long	.LASF182
	.byte	0x6
	.byte	0xea
	.long	.LASF182
	.long	0x96a
	.long	0xfdb
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x92d
	.byte	0
	.uleb128 0x18
	.long	.LASF183
	.byte	0x6
	.value	0x111
	.long	.LASF183
	.long	0x96a
	.long	0xffa
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x96a
	.byte	0
	.uleb128 0x18
	.long	.LASF184
	.byte	0x6
	.value	0x13c
	.long	.LASF184
	.long	0x96a
	.long	0x101e
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0x92d
	.uleb128 0x16
	.long	0x86
	.byte	0
	.uleb128 0x32
	.long	.LASF185
	.byte	0x7
	.byte	0xf2
	.long	0x119c
	.uleb128 0x12
	.byte	0x7
	.byte	0xf8
	.long	0x119c
	.uleb128 0x13
	.byte	0x7
	.value	0x101
	.long	0x11be
	.uleb128 0x13
	.byte	0x7
	.value	0x102
	.long	0x11e5
	.uleb128 0x14
	.long	.LASF187
	.byte	0x10
	.byte	0x24
	.uleb128 0x12
	.byte	0x11
	.byte	0x2c
	.long	0x4bb
	.uleb128 0x12
	.byte	0x11
	.byte	0x2d
	.long	0x4db
	.uleb128 0x5
	.long	.LASF188
	.byte	0x1
	.byte	0x12
	.byte	0x37
	.long	0x1097
	.uleb128 0x33
	.long	.LASF189
	.byte	0x12
	.byte	0x3a
	.long	0x123
	.uleb128 0x33
	.long	.LASF190
	.byte	0x12
	.byte	0x3b
	.long	0x123
	.uleb128 0x33
	.long	.LASF191
	.byte	0x12
	.byte	0x3f
	.long	0x13c7
	.uleb128 0x33
	.long	.LASF192
	.byte	0x12
	.byte	0x40
	.long	0x123
	.uleb128 0x28
	.long	.LASF194
	.long	0xff
	.byte	0
	.uleb128 0x5
	.long	.LASF195
	.byte	0x1
	.byte	0x12
	.byte	0x37
	.long	0x10d9
	.uleb128 0x33
	.long	.LASF189
	.byte	0x12
	.byte	0x3a
	.long	0x13cc
	.uleb128 0x33
	.long	.LASF190
	.byte	0x12
	.byte	0x3b
	.long	0x13cc
	.uleb128 0x33
	.long	.LASF191
	.byte	0x12
	.byte	0x3f
	.long	0x13c7
	.uleb128 0x33
	.long	.LASF192
	.byte	0x12
	.byte	0x40
	.long	0x123
	.uleb128 0x28
	.long	.LASF194
	.long	0x91
	.byte	0
	.uleb128 0x5
	.long	.LASF196
	.byte	0x1
	.byte	0x12
	.byte	0x37
	.long	0x111b
	.uleb128 0x33
	.long	.LASF189
	.byte	0x12
	.byte	0x3a
	.long	0x12e
	.uleb128 0x33
	.long	.LASF190
	.byte	0x12
	.byte	0x3b
	.long	0x12e
	.uleb128 0x33
	.long	.LASF191
	.byte	0x12
	.byte	0x3f
	.long	0x13c7
	.uleb128 0x33
	.long	.LASF192
	.byte	0x12
	.byte	0x40
	.long	0x123
	.uleb128 0x28
	.long	.LASF194
	.long	0xf8
	.byte	0
	.uleb128 0x5
	.long	.LASF197
	.byte	0x1
	.byte	0x12
	.byte	0x37
	.long	0x115d
	.uleb128 0x33
	.long	.LASF189
	.byte	0x12
	.byte	0x3a
	.long	0x1456
	.uleb128 0x33
	.long	.LASF190
	.byte	0x12
	.byte	0x3b
	.long	0x1456
	.uleb128 0x33
	.long	.LASF191
	.byte	0x12
	.byte	0x3f
	.long	0x13c7
	.uleb128 0x33
	.long	.LASF192
	.byte	0x12
	.byte	0x40
	.long	0x123
	.uleb128 0x28
	.long	.LASF194
	.long	0x121a
	.byte	0
	.uleb128 0x34
	.long	.LASF273
	.byte	0x1
	.byte	0x12
	.byte	0x37
	.uleb128 0x33
	.long	.LASF189
	.byte	0x12
	.byte	0x3a
	.long	0x145b
	.uleb128 0x33
	.long	.LASF190
	.byte	0x12
	.byte	0x3b
	.long	0x145b
	.uleb128 0x33
	.long	.LASF191
	.byte	0x12
	.byte	0x3f
	.long	0x13c7
	.uleb128 0x33
	.long	.LASF192
	.byte	0x12
	.byte	0x40
	.long	0x123
	.uleb128 0x28
	.long	.LASF194
	.long	0xe76
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF198
	.byte	0x6
	.value	0x1cb
	.long	0x11b7
	.long	0x11b7
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0xe0e
	.byte	0
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF199
	.uleb128 0x2c
	.long	.LASF200
	.byte	0x6
	.value	0x1e3
	.long	0x11de
	.long	0x11de
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0xe0e
	.uleb128 0x16
	.long	0xff
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF201
	.uleb128 0x2c
	.long	.LASF202
	.byte	0x6
	.value	0x1ea
	.long	0x1205
	.long	0x1205
	.uleb128 0x16
	.long	0x96a
	.uleb128 0x16
	.long	0xe0e
	.uleb128 0x16
	.long	0xff
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF203
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF204
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF205
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF206
	.uleb128 0x32
	.long	.LASF207
	.byte	0xf
	.byte	0x37
	.long	0x1234
	.uleb128 0x35
	.byte	0xf
	.byte	0x38
	.long	0x2ec
	.byte	0
	.uleb128 0x36
	.byte	0x8
	.long	0x2ff
	.uleb128 0x36
	.byte	0x8
	.long	0x32f
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF208
	.uleb128 0x10
	.byte	0x8
	.long	0x32f
	.uleb128 0x10
	.byte	0x8
	.long	0x2ff
	.uleb128 0x36
	.byte	0x8
	.long	0x456
	.uleb128 0x5
	.long	.LASF209
	.byte	0x60
	.byte	0x13
	.byte	0x35
	.long	0x1386
	.uleb128 0x6
	.long	.LASF210
	.byte	0x13
	.byte	0x39
	.long	0xbeb
	.byte	0
	.uleb128 0x6
	.long	.LASF211
	.byte	0x13
	.byte	0x3a
	.long	0xbeb
	.byte	0x8
	.uleb128 0x6
	.long	.LASF212
	.byte	0x13
	.byte	0x40
	.long	0xbeb
	.byte	0x10
	.uleb128 0x6
	.long	.LASF213
	.byte	0x13
	.byte	0x46
	.long	0xbeb
	.byte	0x18
	.uleb128 0x6
	.long	.LASF214
	.byte	0x13
	.byte	0x47
	.long	0xbeb
	.byte	0x20
	.uleb128 0x6
	.long	.LASF215
	.byte	0x13
	.byte	0x48
	.long	0xbeb
	.byte	0x28
	.uleb128 0x6
	.long	.LASF216
	.byte	0x13
	.byte	0x49
	.long	0xbeb
	.byte	0x30
	.uleb128 0x6
	.long	.LASF217
	.byte	0x13
	.byte	0x4a
	.long	0xbeb
	.byte	0x38
	.uleb128 0x6
	.long	.LASF218
	.byte	0x13
	.byte	0x4b
	.long	0xbeb
	.byte	0x40
	.uleb128 0x6
	.long	.LASF219
	.byte	0x13
	.byte	0x4c
	.long	0xbeb
	.byte	0x48
	.uleb128 0x6
	.long	.LASF220
	.byte	0x13
	.byte	0x4d
	.long	0xf8
	.byte	0x50
	.uleb128 0x6
	.long	.LASF221
	.byte	0x13
	.byte	0x4e
	.long	0xf8
	.byte	0x51
	.uleb128 0x6
	.long	.LASF222
	.byte	0x13
	.byte	0x50
	.long	0xf8
	.byte	0x52
	.uleb128 0x6
	.long	.LASF223
	.byte	0x13
	.byte	0x52
	.long	0xf8
	.byte	0x53
	.uleb128 0x6
	.long	.LASF224
	.byte	0x13
	.byte	0x54
	.long	0xf8
	.byte	0x54
	.uleb128 0x6
	.long	.LASF225
	.byte	0x13
	.byte	0x56
	.long	0xf8
	.byte	0x55
	.uleb128 0x6
	.long	.LASF226
	.byte	0x13
	.byte	0x5d
	.long	0xf8
	.byte	0x56
	.uleb128 0x6
	.long	.LASF227
	.byte	0x13
	.byte	0x5e
	.long	0xf8
	.byte	0x57
	.uleb128 0x6
	.long	.LASF228
	.byte	0x13
	.byte	0x61
	.long	0xf8
	.byte	0x58
	.uleb128 0x6
	.long	.LASF229
	.byte	0x13
	.byte	0x63
	.long	0xf8
	.byte	0x59
	.uleb128 0x6
	.long	.LASF230
	.byte	0x13
	.byte	0x65
	.long	0xf8
	.byte	0x5a
	.uleb128 0x6
	.long	.LASF231
	.byte	0x13
	.byte	0x67
	.long	0xf8
	.byte	0x5b
	.uleb128 0x6
	.long	.LASF232
	.byte	0x13
	.byte	0x6e
	.long	0xf8
	.byte	0x5c
	.uleb128 0x6
	.long	.LASF233
	.byte	0x13
	.byte	0x6f
	.long	0xf8
	.byte	0x5d
	.byte	0
	.uleb128 0x2f
	.long	.LASF234
	.byte	0x13
	.byte	0x7c
	.long	0xbeb
	.long	0x13a0
	.uleb128 0x16
	.long	0xff
	.uleb128 0x16
	.long	0x128
	.byte	0
	.uleb128 0x37
	.long	.LASF236
	.byte	0x13
	.byte	0x7f
	.long	0x13ab
	.uleb128 0x10
	.byte	0x8
	.long	0x1259
	.uleb128 0x3
	.long	.LASF237
	.byte	0x14
	.byte	0x28
	.long	0xff
	.uleb128 0x3
	.long	.LASF238
	.byte	0x15
	.byte	0x20
	.long	0xff
	.uleb128 0xf
	.long	0x1240
	.uleb128 0xf
	.long	0x91
	.uleb128 0x10
	.byte	0x8
	.long	0x60b
	.uleb128 0x3
	.long	.LASF239
	.byte	0x16
	.byte	0x34
	.long	0x91
	.uleb128 0x3
	.long	.LASF240
	.byte	0x16
	.byte	0xba
	.long	0x13ed
	.uleb128 0x10
	.byte	0x8
	.long	0x13f3
	.uleb128 0xf
	.long	0x13b1
	.uleb128 0x2f
	.long	.LASF241
	.byte	0x16
	.byte	0xaf
	.long	0xff
	.long	0x1412
	.uleb128 0x16
	.long	0x98
	.uleb128 0x16
	.long	0x13d7
	.byte	0
	.uleb128 0x2f
	.long	.LASF242
	.byte	0x16
	.byte	0xdd
	.long	0x98
	.long	0x142c
	.uleb128 0x16
	.long	0x98
	.uleb128 0x16
	.long	0x13e2
	.byte	0
	.uleb128 0x2f
	.long	.LASF243
	.byte	0x16
	.byte	0xda
	.long	0x13e2
	.long	0x1441
	.uleb128 0x16
	.long	0x128
	.byte	0
	.uleb128 0x2f
	.long	.LASF244
	.byte	0x16
	.byte	0xab
	.long	0x13d7
	.long	0x1456
	.uleb128 0x16
	.long	0x128
	.byte	0
	.uleb128 0xf
	.long	0x121a
	.uleb128 0xf
	.long	0xe76
	.uleb128 0x35
	.byte	0x1
	.byte	0x3
	.long	0x133
	.uleb128 0x38
	.string	"Bar"
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.long	0x14b9
	.uleb128 0x39
	.long	.LASF245
	.byte	0x1
	.byte	0x9
	.long	0xff
	.byte	0
	.byte	0x2
	.uleb128 0x3a
	.long	.LASF247
	.byte	0x1
	.byte	0xc
	.long	.LASF274
	.long	0xff
	.byte	0x1
	.long	0x1498
	.long	0x149e
	.uleb128 0x21
	.long	0x14b9
	.byte	0
	.uleb128 0x3b
	.long	.LASF247
	.byte	0x1
	.byte	0x10
	.long	.LASF275
	.long	0xff
	.byte	0x1
	.long	0x14b2
	.uleb128 0x21
	.long	0x14bf
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x1467
	.uleb128 0x10
	.byte	0x8
	.long	0x14c5
	.uleb128 0xf
	.long	0x1467
	.uleb128 0x3c
	.long	0x1480
	.quad	.LFB1020
	.quad	.LFE1020-.LFB1020
	.uleb128 0x1
	.byte	0x9c
	.long	0x14e9
	.long	0x14f6
	.uleb128 0x3d
	.long	.LASF246
	.long	0x14f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	0x14b9
	.uleb128 0x3c
	.long	0x149e
	.quad	.LFB1021
	.quad	.LFE1021-.LFB1021
	.uleb128 0x1
	.byte	0x9c
	.long	0x151a
	.long	0x1527
	.uleb128 0x3d
	.long	.LASF246
	.long	0x1527
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	0x14bf
	.uleb128 0x3e
	.long	.LASF248
	.byte	0x1
	.byte	0x17
	.long	0xff
	.quad	.LFB1022
	.quad	.LFE1022-.LFB1022
	.uleb128 0x1
	.byte	0x9c
	.long	0x157c
	.uleb128 0x3f
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x40
	.string	"bar"
	.byte	0x1
	.byte	0x1a
	.long	0x1467
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x41
	.long	.LASF250
	.byte	0x1
	.byte	0x20
	.long	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	.LASF276
	.quad	.LFB1031
	.quad	.LFE1031-.LFB1031
	.uleb128 0x1
	.byte	0x9c
	.long	0x15b4
	.uleb128 0x43
	.long	.LASF251
	.byte	0x1
	.byte	0x27
	.long	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x43
	.long	.LASF252
	.byte	0x1
	.byte	0x27
	.long	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x44
	.long	.LASF277
	.quad	.LFB1032
	.quad	.LFE1032-.LFB1032
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x45
	.long	.LASF253
	.long	0x84
	.uleb128 0x46
	.long	0x8c9
	.uleb128 0x9
	.byte	0x3
	.quad	_ZStL8__ioinit
	.uleb128 0x47
	.long	0x1061
	.long	.LASF254
	.sleb128 -2147483648
	.uleb128 0x48
	.long	0x106c
	.long	.LASF255
	.long	0x7fffffff
	.uleb128 0x49
	.long	0x10c4
	.long	.LASF256
	.byte	0x40
	.uleb128 0x49
	.long	0x10f0
	.long	.LASF257
	.byte	0x7f
	.uleb128 0x47
	.long	0x1127
	.long	.LASF258
	.sleb128 -32768
	.uleb128 0x4a
	.long	0x1132
	.long	.LASF259
	.value	0x7fff
	.uleb128 0x47
	.long	0x1165
	.long	.LASF260
	.sleb128 -9223372036854775808
	.uleb128 0x4b
	.long	0x1170
	.long	.LASF261
	.quad	0x7fffffffffffffff
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1e
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x7
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB1020
	.quad	.LFE1020-.LFB1020
	.quad	.LFB1021
	.quad	.LFE1021-.LFB1021
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB1020
	.quad	.LFE1020
	.quad	.LFB1021
	.quad	.LFE1021
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF277:
	.string	"_GLOBAL__sub_I_main"
.LASF81:
	.string	"_S_end"
.LASF7:
	.string	"size_t"
.LASF4:
	.string	"sizetype"
.LASF149:
	.string	"tm_hour"
.LASF13:
	.string	"__value"
.LASF188:
	.string	"__numeric_traits_integer<int>"
.LASF255:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIiE5__maxE"
.LASF87:
	.string	"boolalpha"
.LASF92:
	.string	"scientific"
.LASF190:
	.string	"__max"
.LASF145:
	.string	"wcscspn"
.LASF236:
	.string	"localeconv"
.LASF221:
	.string	"frac_digits"
.LASF213:
	.string	"int_curr_symbol"
.LASF107:
	.string	"goodbit"
.LASF180:
	.string	"wcschr"
.LASF44:
	.string	"_S_boolalpha"
.LASF74:
	.string	"_S_badbit"
.LASF106:
	.string	"failbit"
.LASF224:
	.string	"n_cs_precedes"
.LASF126:
	.string	"mbrtowc"
.LASF172:
	.string	"wcsxfrm"
.LASF220:
	.string	"int_frac_digits"
.LASF79:
	.string	"_S_beg"
.LASF143:
	.string	"wcscoll"
.LASF275:
	.string	"_ZNK3Bar7bar_funEv"
.LASF245:
	.string	"ival"
.LASF96:
	.string	"skipws"
.LASF10:
	.string	"__wch"
.LASF31:
	.string	"_ZNSt11char_traitsIcE4moveEPcPKcm"
.LASF98:
	.string	"uppercase"
.LASF247:
	.string	"bar_fun"
.LASF60:
	.string	"_S_basefield"
.LASF39:
	.string	"_ZNSt11char_traitsIcE11to_int_typeERKc"
.LASF215:
	.string	"mon_decimal_point"
.LASF170:
	.string	"long int"
.LASF196:
	.string	"__numeric_traits_integer<char>"
.LASF138:
	.string	"vwprintf"
.LASF64:
	.string	"_Ios_Openmode"
.LASF21:
	.string	"int_type"
.LASF248:
	.string	"main"
.LASF230:
	.string	"int_n_cs_precedes"
.LASF242:
	.string	"towctrans"
.LASF32:
	.string	"copy"
.LASF16:
	.string	"mbstate_t"
.LASF249:
	.string	"__ioinit"
.LASF84:
	.string	"_S_synced_with_stdio"
.LASF194:
	.string	"_Value"
.LASF75:
	.string	"_S_eofbit"
.LASF154:
	.string	"tm_yday"
.LASF205:
	.string	"signed char"
.LASF265:
	.string	"_IO_FILE"
.LASF113:
	.string	"basic_ostream<char, std::char_traits<char> >"
.LASF239:
	.string	"wctype_t"
.LASF116:
	.string	"fgetwc"
.LASF235:
	.string	"getwchar"
.LASF117:
	.string	"fgetws"
.LASF51:
	.string	"_S_right"
.LASF20:
	.string	"char_type"
.LASF204:
	.string	"unsigned char"
.LASF225:
	.string	"n_sep_by_space"
.LASF184:
	.string	"wmemchr"
.LASF73:
	.string	"_S_goodbit"
.LASF259:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIsE5__maxE"
.LASF67:
	.string	"_S_bin"
.LASF142:
	.string	"wcscmp"
.LASF42:
	.string	"not_eof"
.LASF131:
	.string	"swprintf"
.LASF262:
	.string	"GNU C++ 4.9.2 -fpreprocessed -mtune=generic -march=x86-64 -g"
.LASF181:
	.string	"wcspbrk"
.LASF261:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIlE5__maxE"
.LASF191:
	.string	"__is_signed"
.LASF69:
	.string	"_S_out"
.LASF14:
	.string	"char"
.LASF65:
	.string	"_S_app"
.LASF244:
	.string	"wctype"
.LASF108:
	.string	"openmode"
.LASF160:
	.string	"wcsncmp"
.LASF263:
	.string	"const_fun.cpp"
.LASF233:
	.string	"int_n_sign_posn"
.LASF227:
	.string	"n_sign_posn"
.LASF176:
	.string	"wmemmove"
.LASF189:
	.string	"__min"
.LASF115:
	.string	"btowc"
.LASF179:
	.string	"wscanf"
.LASF216:
	.string	"mon_thousands_sep"
.LASF133:
	.string	"ungetwc"
.LASF1:
	.string	"fp_offset"
.LASF43:
	.string	"ptrdiff_t"
.LASF254:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIiE5__minE"
.LASF240:
	.string	"wctrans_t"
.LASF125:
	.string	"mbrlen"
.LASF219:
	.string	"negative_sign"
.LASF47:
	.string	"_S_hex"
.LASF228:
	.string	"int_p_cs_precedes"
.LASF122:
	.string	"fwprintf"
.LASF271:
	.string	"cout"
.LASF202:
	.string	"wcstoull"
.LASF48:
	.string	"_S_internal"
.LASF24:
	.string	"compare"
.LASF150:
	.string	"tm_mday"
.LASF100:
	.string	"basefield"
.LASF28:
	.string	"find"
.LASF144:
	.string	"wcscpy"
.LASF193:
	.string	"_CharT"
.LASF88:
	.string	"fixed"
.LASF136:
	.string	"vswprintf"
.LASF177:
	.string	"wmemset"
.LASF111:
	.string	"seekdir"
.LASF121:
	.string	"fwide"
.LASF90:
	.string	"left"
.LASF147:
	.string	"tm_sec"
.LASF155:
	.string	"tm_isdst"
.LASF161:
	.string	"wcsncpy"
.LASF130:
	.string	"putwchar"
.LASF174:
	.string	"wmemcmp"
.LASF66:
	.string	"_S_ate"
.LASF33:
	.string	"_ZNSt11char_traitsIcE4copyEPcPKcm"
.LASF23:
	.string	"_ZNSt11char_traitsIcE2ltERKcS2_"
.LASF46:
	.string	"_S_fixed"
.LASF231:
	.string	"int_n_sep_by_space"
.LASF252:
	.string	"__priority"
.LASF30:
	.string	"move"
.LASF8:
	.string	"long unsigned int"
.LASF53:
	.string	"_S_showbase"
.LASF68:
	.string	"_S_in"
.LASF207:
	.string	"__gnu_debug"
.LASF134:
	.string	"vfwprintf"
.LASF246:
	.string	"this"
.LASF137:
	.string	"vswscanf"
.LASF223:
	.string	"p_sep_by_space"
.LASF40:
	.string	"eq_int_type"
.LASF83:
	.string	"_S_refcount"
.LASF37:
	.string	"_ZNSt11char_traitsIcE12to_char_typeERKi"
.LASF70:
	.string	"_S_trunc"
.LASF251:
	.string	"__initialize_p"
.LASF91:
	.string	"right"
.LASF55:
	.string	"_S_showpos"
.LASF15:
	.string	"__mbstate_t"
.LASF175:
	.string	"wmemcpy"
.LASF250:
	.string	"bar_const"
.LASF151:
	.string	"tm_mon"
.LASF45:
	.string	"_S_dec"
.LASF63:
	.string	"_Ios_Fmtflags"
.LASF165:
	.string	"double"
.LASF29:
	.string	"_ZNSt11char_traitsIcE4findEPKcmRS1_"
.LASF258:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIsE5__minE"
.LASF173:
	.string	"wctob"
.LASF54:
	.string	"_S_showpoint"
.LASF56:
	.string	"_S_skipws"
.LASF0:
	.string	"gp_offset"
.LASF59:
	.string	"_S_adjustfield"
.LASF256:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerImE8__digitsE"
.LASF167:
	.string	"float"
.LASF89:
	.string	"internal"
.LASF272:
	.string	"_ZSt4cout"
.LASF148:
	.string	"tm_min"
.LASF49:
	.string	"_S_left"
.LASF5:
	.string	"unsigned int"
.LASF260:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIlE5__minE"
.LASF19:
	.string	"char_traits<char>"
.LASF218:
	.string	"positive_sign"
.LASF71:
	.string	"_S_ios_openmode_end"
.LASF163:
	.string	"wcsspn"
.LASF226:
	.string	"p_sign_posn"
.LASF41:
	.string	"_ZNSt11char_traitsIcE11eq_int_typeERKiS2_"
.LASF58:
	.string	"_S_uppercase"
.LASF238:
	.string	"_Atomic_word"
.LASF93:
	.string	"showbase"
.LASF2:
	.string	"overflow_arg_area"
.LASF62:
	.string	"_S_ios_fmtflags_end"
.LASF85:
	.string	"Init"
.LASF274:
	.string	"_ZN3Bar7bar_funEv"
.LASF114:
	.string	"ostream"
.LASF210:
	.string	"decimal_point"
.LASF12:
	.string	"__count"
.LASF185:
	.string	"__gnu_cxx"
.LASF208:
	.string	"bool"
.LASF35:
	.string	"_ZNSt11char_traitsIcE6assignEPcmc"
.LASF199:
	.string	"long double"
.LASF129:
	.string	"putwc"
.LASF273:
	.string	"__numeric_traits_integer<long int>"
.LASF95:
	.string	"showpos"
.LASF61:
	.string	"_S_floatfield"
.LASF50:
	.string	"_S_oct"
.LASF11:
	.string	"__wchb"
.LASF109:
	.string	"binary"
.LASF276:
	.string	"__static_initialization_and_destruction_0"
.LASF26:
	.string	"_ZNSt11char_traitsIcE7compareEPKcS2_m"
.LASF203:
	.string	"long long unsigned int"
.LASF3:
	.string	"reg_save_area"
.LASF198:
	.string	"wcstold"
.LASF229:
	.string	"int_p_sep_by_space"
.LASF82:
	.string	"_S_ios_seekdir_end"
.LASF25:
	.string	"length"
.LASF200:
	.string	"wcstoll"
.LASF183:
	.string	"wcsstr"
.LASF72:
	.string	"_Ios_Iostate"
.LASF257:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIcE5__maxE"
.LASF162:
	.string	"wcsrtombs"
.LASF99:
	.string	"adjustfield"
.LASF153:
	.string	"tm_wday"
.LASF57:
	.string	"_S_unitbuf"
.LASF22:
	.string	"_ZNSt11char_traitsIcE2eqERKcS2_"
.LASF101:
	.string	"floatfield"
.LASF132:
	.string	"swscanf"
.LASF192:
	.string	"__digits"
.LASF164:
	.string	"wcstod"
.LASF166:
	.string	"wcstof"
.LASF168:
	.string	"wcstok"
.LASF169:
	.string	"wcstol"
.LASF110:
	.string	"trunc"
.LASF6:
	.string	"__FILE"
.LASF94:
	.string	"showpoint"
.LASF234:
	.string	"setlocale"
.LASF182:
	.string	"wcsrchr"
.LASF123:
	.string	"fwscanf"
.LASF9:
	.string	"wint_t"
.LASF112:
	.string	"ios_base"
.LASF104:
	.string	"badbit"
.LASF243:
	.string	"wctrans"
.LASF211:
	.string	"thousands_sep"
.LASF105:
	.string	"eofbit"
.LASF158:
	.string	"wcslen"
.LASF103:
	.string	"iostate"
.LASF38:
	.string	"to_int_type"
.LASF36:
	.string	"to_char_type"
.LASF186:
	.string	"__debug"
.LASF156:
	.string	"tm_gmtoff"
.LASF214:
	.string	"currency_symbol"
.LASF206:
	.string	"short int"
.LASF27:
	.string	"_ZNSt11char_traitsIcE6lengthEPKc"
.LASF146:
	.string	"wcsftime"
.LASF217:
	.string	"mon_grouping"
.LASF80:
	.string	"_S_cur"
.LASF267:
	.string	"_ZNSt11char_traitsIcE6assignERcRKc"
.LASF141:
	.string	"wcscat"
.LASF266:
	.string	"11__mbstate_t"
.LASF232:
	.string	"int_p_sign_posn"
.LASF157:
	.string	"tm_zone"
.LASF139:
	.string	"vwscanf"
.LASF77:
	.string	"_S_ios_iostate_end"
.LASF140:
	.string	"wcrtomb"
.LASF209:
	.string	"lconv"
.LASF97:
	.string	"unitbuf"
.LASF268:
	.string	"_ZNSt11char_traitsIcE3eofEv"
.LASF159:
	.string	"wcsncat"
.LASF197:
	.string	"__numeric_traits_integer<short int>"
.LASF253:
	.string	"__dso_handle"
.LASF201:
	.string	"long long int"
.LASF119:
	.string	"fputwc"
.LASF120:
	.string	"fputws"
.LASF86:
	.string	"~Init"
.LASF128:
	.string	"mbsrtowcs"
.LASF76:
	.string	"_S_failbit"
.LASF222:
	.string	"p_cs_precedes"
.LASF195:
	.string	"__numeric_traits_integer<long unsigned int>"
.LASF152:
	.string	"tm_year"
.LASF17:
	.string	"short unsigned int"
.LASF270:
	.string	"_Traits"
.LASF187:
	.string	"__ops"
.LASF135:
	.string	"vfwscanf"
.LASF78:
	.string	"_Ios_Seekdir"
.LASF102:
	.string	"fmtflags"
.LASF237:
	.string	"__int32_t"
.LASF124:
	.string	"getwc"
.LASF127:
	.string	"mbsinit"
.LASF241:
	.string	"iswctype"
.LASF34:
	.string	"assign"
.LASF212:
	.string	"grouping"
.LASF178:
	.string	"wprintf"
.LASF269:
	.string	"_ZNSt11char_traitsIcE7not_eofERKi"
.LASF52:
	.string	"_S_scientific"
.LASF264:
	.string	"/home/StephenSun/programming/cpp/insideObjectModel/semanticsFunction/member_function"
.LASF118:
	.string	"wchar_t"
.LASF18:
	.string	"typedef __va_list_tag __va_list_tag"
.LASF171:
	.string	"wcstoul"
	.hidden	__dso_handle
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
