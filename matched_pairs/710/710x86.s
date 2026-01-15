	.text
	.globl	decimal64Canonical              # -- Begin function decimal64Canonical
	.p2align	4, 0x90
decimal64Canonical:                     # @decimal64Canonical
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	DEC_INIT_DECIMAL64(%rip), %esi
	leaq	-24(%rbp), %rdi
	callq	decContextDefault@PLT
	movq	-16(%rbp), %rdi
	leaq	-20(%rbp), %rsi
	callq	decimal64ToNumber@PLT
	movq	-8(%rbp), %rdi
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	callq	decimal64FromNumber@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DEC_INIT_DECIMAL64
	.p2align	2
DEC_INIT_DECIMAL64:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decContextDefault
	.addrsig_sym decimal64ToNumber
	.addrsig_sym decimal64FromNumber
	.addrsig_sym DEC_INIT_DECIMAL64