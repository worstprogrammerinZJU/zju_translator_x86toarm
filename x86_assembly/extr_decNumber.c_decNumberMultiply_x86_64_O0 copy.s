	.text
	.globl	decNumberMultiply               # -- Begin function decNumberMultiply
	.p2align	4, 0x90
decNumberMultiply:                      # @decNumberMultiply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	leaq	-40(%rbp), %r8
	callq	decMultiplyOp@PLT
	cmpq	$0, -40(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	decStatus@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decMultiplyOp
	.addrsig_sym decStatus