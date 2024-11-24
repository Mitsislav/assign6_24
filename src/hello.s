	.file	"hello.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.globl	grade
	.data
	.type	grade, @object
	.size	grade, 1
grade:
	.byte	51
	.globl	Name
	.bss
	.align 32
	.type	Name, @object
	.size	Name, 48
Name:
	.zero	48
	.text
	.globl	readString
	.type	readString, @function
readString:
.LFB0:
	.file 1 "hello.c"
	.loc 1 11 26
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	.loc 1 13 7
	movl	$0, -12(%ebp)
.L3:
	.loc 1 17 9
	movl	stdin, %eax
	subl	$12, %esp
	pushl	%eax
	call	fgetc
	addl	$16, %esp
	movl	%eax, -16(%ebp)
	.loc 1 18 8
	cmpl	$-1, -16(%ebp)
	je	.L2
	.loc 1 18 19 discriminator 1
	cmpl	$10, -16(%ebp)
	je	.L2
	.loc 1 20 10
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	.loc 1 20 14
	movl	-16(%ebp), %edx
	movb	%dl, -64(%ebp,%eax)
	.loc 1 17 7
	jmp	.L3
.L2:
	.loc 1 22 10
	leal	-64(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	.loc 1 24 10
	movl	$0, -12(%ebp)
	.loc 1 24 3
	jmp	.L4
.L5:
	.loc 1 25 6 discriminator 3
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	.loc 1 25 15 discriminator 3
	leal	-64(%ebp), %ecx
	movl	-12(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	.loc 1 25 10 discriminator 3
	movb	%al, (%edx)
	.loc 1 24 24 discriminator 3
	addl	$1, -12(%ebp)
.L4:
	.loc 1 24 3 discriminator 1
	cmpl	$47, -12(%ebp)
	jle	.L5
	.loc 1 27 3
	nop
	.loc 1 28 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	readString, .-readString
	.section	.rodata
.LC0:
	.string	"What is your name?"
.LC1:
	.string	"Angelos Bilas"
.LC2:
	.string	"Thank you, %s.\n"
	.align 4
.LC3:
	.string	"I recommend that you get a grade of %c on this assignment.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.loc 1 30 16
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$4, %esp
	.loc 1 31 20
	movl	$Name, %eax
	.loc 1 31 39
	andl	$-4096, %eax
	.loc 1 31 3
	subl	$4, %esp
	pushl	$7
	pushl	$1
	pushl	%eax
	call	mprotect
	addl	$16, %esp
	.loc 1 34 3
	subl	$12, %esp
	pushl	$.LC0
	call	puts
	addl	$16, %esp
	.loc 1 35 3
	subl	$12, %esp
	pushl	$Name
	call	readString
	addl	$16, %esp
	.loc 1 37 7
	subl	$8, %esp
	pushl	$.LC1
	pushl	$Name
	call	strcmp
	addl	$16, %esp
	.loc 1 37 6
	testl	%eax, %eax
	jne	.L8
	.loc 1 38 11
	movb	$54, grade
.L8:
	.loc 1 40 3
	subl	$8, %esp
	pushl	$Name
	pushl	$.LC2
	call	printf
	addl	$16, %esp
	.loc 1 41 3
	movzbl	grade, %eax
	movsbl	%al, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC3
	call	printf
	addl	$16, %esp
	.loc 1 44 3
	subl	$12, %esp
	pushl	$0
	call	exit
	.cfi_endproc
.LFE1:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc/i686-linux-gnu/10/include/stddef.h"
	.file 3 "/usr/include/i386-linux-gnu/bits/types.h"
	.file 4 "/usr/include/i386-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/i386-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x335
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF50
	.byte	0x1
	.long	.LASF51
	.long	.LASF52
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.long	0x31
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x2f
	.byte	0x2c
	.long	0x75
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x98
	.byte	0x20
	.long	0x8f
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x99
	.byte	0x21
	.long	0x69
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x38
	.uleb128 0x7
	.long	.LASF53
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x231
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xa4
	.byte	0x4
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xa4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xa4
	.byte	0xc
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xa4
	.byte	0x10
	.uleb128 0x8
	.long	.LASF19
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xa4
	.byte	0x14
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xa4
	.byte	0x18
	.uleb128 0x8
	.long	.LASF21
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xa4
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF22
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xa4
	.byte	0x20
	.uleb128 0x8
	.long	.LASF23
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xa4
	.byte	0x24
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xa4
	.byte	0x28
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xa4
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x24a
	.byte	0x30
	.uleb128 0x8
	.long	.LASF27
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x250
	.byte	0x34
	.uleb128 0x8
	.long	.LASF28
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x62
	.byte	0x38
	.uleb128 0x8
	.long	.LASF29
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x62
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF30
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x83
	.byte	0x40
	.uleb128 0x8
	.long	.LASF31
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x46
	.byte	0x44
	.uleb128 0x8
	.long	.LASF32
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x54
	.byte	0x46
	.uleb128 0x8
	.long	.LASF33
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x256
	.byte	0x47
	.uleb128 0x8
	.long	.LASF34
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x266
	.byte	0x48
	.uleb128 0x8
	.long	.LASF35
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x96
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF36
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x271
	.byte	0x54
	.uleb128 0x8
	.long	.LASF37
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x27c
	.byte	0x58
	.uleb128 0x8
	.long	.LASF38
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x250
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF39
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0xa2
	.byte	0x60
	.uleb128 0x8
	.long	.LASF40
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x25
	.byte	0x64
	.uleb128 0x8
	.long	.LASF41
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x62
	.byte	0x68
	.uleb128 0x8
	.long	.LASF42
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x282
	.byte	0x6c
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xaa
	.uleb128 0x9
	.long	.LASF54
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xa
	.long	.LASF44
	.uleb128 0x6
	.byte	0x4
	.long	0x245
	.uleb128 0x6
	.byte	0x4
	.long	0xaa
	.uleb128 0xb
	.long	0x38
	.long	0x266
	.uleb128 0xc
	.long	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x23d
	.uleb128 0xa
	.long	.LASF45
	.uleb128 0x6
	.byte	0x4
	.long	0x26c
	.uleb128 0xa
	.long	.LASF46
	.uleb128 0x6
	.byte	0x4
	.long	0x277
	.uleb128 0xb
	.long	0x38
	.long	0x292
	.uleb128 0xc
	.long	0x31
	.byte	0x27
	.byte	0
	.uleb128 0xd
	.long	.LASF47
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x29e
	.uleb128 0x6
	.byte	0x4
	.long	0x231
	.uleb128 0xe
	.long	.LASF48
	.byte	0x1
	.byte	0x8
	.byte	0x6
	.long	0x38
	.uleb128 0x5
	.byte	0x3
	.long	grade
	.uleb128 0xb
	.long	0x38
	.long	0x2c6
	.uleb128 0xc
	.long	0x31
	.byte	0x2f
	.byte	0
	.uleb128 0xe
	.long	.LASF49
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.long	0x2b6
	.uleb128 0x5
	.byte	0x3
	.long	Name
	.uleb128 0xf
	.long	.LASF55
	.byte	0x1
	.byte	0x1e
	.byte	0x5
	.long	0x62
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.long	.LASF56
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0xb
	.byte	0x17
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"buf"
	.byte	0x1
	.byte	0xc
	.byte	0x8
	.long	0x2b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xd
	.byte	0x7
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0xe
	.byte	0x7
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_old_offset"
.LASF25:
	.string	"_IO_save_end"
.LASF6:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF35:
	.string	"_offset"
.LASF19:
	.string	"_IO_write_ptr"
.LASF14:
	.string	"_flags"
.LASF49:
	.string	"Name"
.LASF21:
	.string	"_IO_buf_base"
.LASF26:
	.string	"_markers"
.LASF16:
	.string	"_IO_read_end"
.LASF39:
	.string	"_freeres_buf"
.LASF50:
	.string	"GNU C89 10.2.1 20210110 -mtune=generic -march=i686 -g -ansi -fno-pie -fno-asynchronous-unwind-tables"
.LASF9:
	.string	"long long int"
.LASF34:
	.string	"_lock"
.LASF12:
	.string	"long int"
.LASF8:
	.string	"__int64_t"
.LASF31:
	.string	"_cur_column"
.LASF53:
	.string	"_IO_FILE"
.LASF52:
	.string	"/home/ugrads/class22/csd5193/hy255/assign6_24/src"
.LASF2:
	.string	"unsigned char"
.LASF56:
	.string	"readString"
.LASF5:
	.string	"signed char"
.LASF36:
	.string	"_codecvt"
.LASF10:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF44:
	.string	"_IO_marker"
.LASF33:
	.string	"_shortbuf"
.LASF48:
	.string	"grade"
.LASF18:
	.string	"_IO_write_base"
.LASF42:
	.string	"_unused2"
.LASF15:
	.string	"_IO_read_ptr"
.LASF3:
	.string	"short unsigned int"
.LASF1:
	.string	"char"
.LASF55:
	.string	"main"
.LASF37:
	.string	"_wide_data"
.LASF38:
	.string	"_freeres_list"
.LASF40:
	.string	"__pad5"
.LASF45:
	.string	"_IO_codecvt"
.LASF4:
	.string	"long unsigned int"
.LASF20:
	.string	"_IO_write_end"
.LASF13:
	.string	"__off64_t"
.LASF11:
	.string	"__off_t"
.LASF27:
	.string	"_chain"
.LASF46:
	.string	"_IO_wide_data"
.LASF24:
	.string	"_IO_backup_base"
.LASF47:
	.string	"stdin"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF17:
	.string	"_IO_read_base"
.LASF32:
	.string	"_vtable_offset"
.LASF23:
	.string	"_IO_save_base"
.LASF28:
	.string	"_fileno"
.LASF43:
	.string	"FILE"
.LASF51:
	.string	"hello.c"
.LASF54:
	.string	"_IO_lock_t"
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
