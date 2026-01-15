	.text
	.globl	decimal128FromString            # -- Begin function decimal128FromString
	.p2align	4, 0x90
decimal128FromString:                   # @decimal128FromString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	DEC_INIT_DECIMAL128(%rip), %esi
	leaq	-40(%rbp), %rdi
	callq	decContextDefault@PLT
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rsi
	leaq	-44(%rbp), %rdi
	leaq	-40(%rbp), %rdx
	callq	decNumberFromString@PLT
	movq	-8(%rbp), %rdi
	leaq	-44(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	callq	decimal128FromNumber@PLT
	cmpq	$0, -40(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	decContextSetStatus@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DEC_INIT_DECIMAL128
	.p2align	2
DEC_INIT_DECIMAL128:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decContextDefault
	.addrsig_sym decNumberFromString
	.addrsig_sym decimal128FromNumber
	.addrsig_sym decContextSetStatus
	.addrsig_sym DEC_INIT_DECIMAL128