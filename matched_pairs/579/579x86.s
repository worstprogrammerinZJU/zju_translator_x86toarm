	.text
	.globl	decFloatCompareTotalMag         # -- Begin function decFloatCompareTotalMag
	.p2align	4, 0x90
decFloatCompareTotalMag:                # @decFloatCompareTotalMag
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	DFISSIGNED@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rsi
	leaq	-28(%rbp), %rdi
	callq	decFloatCopyAbs@PLT
	leaq	-28(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB0_2:
	movq	-24(%rbp), %rdi
	callq	DFISSIGNED@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	callq	decFloatCopyAbs@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_4:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	decFloatCompareTotal@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSIGNED
	.addrsig_sym decFloatCopyAbs
	.addrsig_sym decFloatCompareTotal