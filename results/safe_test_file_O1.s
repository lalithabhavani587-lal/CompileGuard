	.file	"safe_test_file.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Enter text: "
.LC1:
	.string	"%99s"
.LC2:
	.string	"Enter index: "
.LC3:
	.string	"%d"
.LC4:
	.string	"Invalid index"
.LC5:
	.string	"%s %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB37:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$136, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rsi
	movl	$2, %edi
	call	__printf_chk@PLT
	leaq	16(%rsp), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$1, %ebx
	cmpl	$1, %eax
	je	.L7
.L1:
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L8
	movl	%ebx, %eax
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	movl	%eax, %ebx
	leaq	.LC2(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	leaq	4(%rsp), %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	%eax, %ebp
	cmpl	$1, %eax
	jne	.L1
	cmpl	$7, 4(%rsp)
	ja	.L9
	leaq	16(%rsp), %rsi
	leaq	8(%rsp), %rbx
	movl	$7, %edx
	movq	%rbx, %rdi
	call	strncpy@PLT
	movb	$0, 15(%rsp)
	movl	$10, %ecx
	movq	%rbx, %rdx
	leaq	.LC5(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %ebx
	jmp	.L1
.L9:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	%ebp, %ebx
	jmp	.L1
.L8:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE37:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
