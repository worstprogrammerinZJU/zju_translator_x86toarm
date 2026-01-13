	.text
	.globl	decimal32Canonical              # -- Begin function decimal32Canonical
	.p2align	4, 0x90
decimal32Canonical:                     # @decimal32Canonical
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	DEC_INIT_DECIMAL32(%rip), %esi
	leaq	-24(%rbp), %rdi
	callq	decContextDefault@PLT
	movq	-16(%rbp), %rdi
	leaq	-20(%rbp), %rsi
	callq	decimal32ToNumber@PLT
	movq	-8(%rbp), %rdi
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	callq	decimal32FromNumber@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DEC_INIT_DECIMAL32
	.p2align	2
DEC_INIT_DECIMAL32:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decContextDefault
	.addrsig_sym decimal32ToNumber
	.addrsig_sym decimal32FromNumber
	.addrsig_sym DEC_INIT_DECIMAL32