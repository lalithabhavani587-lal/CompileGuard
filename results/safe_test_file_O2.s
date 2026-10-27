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
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB37:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	.LC0(%rip), %rsi
	movl	$2, %edi
	addq	$-128, %rsp
	.cfi_def_cfa_offset 144
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %rbx
	call	__printf_chk@PLT
	xorl	%eax, %eax
	movq	%rbx, %rsi
	leaq	.LC1(%rip), %rdi
	call	__isoc99_scanf@PLT
	cmpl	$1, %eax
	je	.L10
.L3:
	movl	$1, %eax
.L1:
	movq	120(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L11
	subq	$-128, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L10:
	.cfi_restore_state
	leaq	.LC2(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%eax, %eax
	leaq	4(%rsp), %rsi
	leaq	.LC3(%rip), %rdi
	call	__isoc99_scanf@PLT
	subl	$1, %eax
	jne	.L3
	cmpl	$7, 4(%rsp)
	ja	.L12
	leaq	8(%rsp), %rdi
	movl	$7, %edx
	movq	%rbx, %rsi
	call	strncpy@PLT
	movl	$10, %ecx
	movl	$2, %edi
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	movb	$0, 15(%rsp)
	call	__printf_chk@PLT
	xorl	%eax, %eax
	jmp	.L1
.L12:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	jmp	.L3
.L11:
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
