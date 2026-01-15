	.text
	.globl	decNumberToIntegralValue        # -- Begin function decNumberToIntegralValue
	.p2align	4, 0x90
decNumberToIntegralValue:               # @decNumberToIntegralValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	callq	decNumberToIntegralExact@PLT
	movl	-40(%rbp), %ecx
	andl	DEC_Invalid_operation(%rip), %ecx
	movq	-24(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberToIntegralExact
	.addrsig_sym DEC_Invalid_operation