	.text
	.p2align	4, 0x90                         # -- Begin function decCheckMath
decCheckMath:                           # @decCheckMath
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	DEC_MAX_MATH(%rip), %eax
	jg	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	DEC_MAX_MATH(%rip), %eax
	jg	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rcx
	xorl	%eax, %eax
	subl	8(%rcx), %eax
	cmpl	DEC_MAX_MATH(%rip), %eax
	jle	.LBB0_4
.LBB0_3:
	movl	DEC_Invalid_context(%rip), %ecx
	movq	-24(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_10
.LBB0_4:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	DEC_MAX_MATH(%rip), %eax
	jg	.LBB0_7
# %bb.5:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movq	-8(%rbp), %rcx
	addl	(%rcx), %eax
	movl	DEC_MAX_MATH(%rip), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB0_7
# %bb.6:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movq	-8(%rbp), %rcx
	addl	(%rcx), %eax
	movl	$1, %ecx
	subl	DEC_MAX_MATH(%rip), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_9
.LBB0_7:
	movq	-8(%rbp), %rdi
	callq	ISZERO@PLT
	cmpl	$0, %eax
	jne	.LBB0_9
# %bb.8:
	movl	DEC_Invalid_operation(%rip), %ecx
	movq	-24(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-28(%rbp), %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DEC_MAX_MATH
	.p2align	2
DEC_MAX_MATH:
	.long	0                               # 0x0
	.globl	DEC_Invalid_context
	.p2align	2
DEC_Invalid_context:
	.long	0                               # 0x0
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decCheckMath
	.addrsig_sym ISZERO
	.addrsig_sym DEC_MAX_MATH
	.addrsig_sym DEC_Invalid_context
	.addrsig_sym DEC_Invalid_operation