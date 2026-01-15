	.text
	.globl	decFloatMaxMag                  # -- Begin function decFloatMaxMag
	.p2align	4, 0x90
decFloatMaxMag:                         # @decFloatMaxMag
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	DFISNAN@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rdi
	callq	DFISNAN@PLT
	cmpq	$0, %rax
	je	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	decFloatMax@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_3:
	movq	-24(%rbp), %rsi
	leaq	-52(%rbp), %rdi
	callq	decFloatCopyAbs@PLT
	movq	-32(%rbp), %rsi
	leaq	-56(%rbp), %rdi
	callq	decFloatCopyAbs@PLT
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	callq	decNumCompare@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jle	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	decCanonical@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_5:
	cmpq	$0, -48(%rbp)
	jge	.LBB0_7
# %bb.6:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	decCanonical@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_7:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	decFloatMax@PLT
	movq	%rax, -8(%rbp)
.LBB0_8:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISNAN
	.addrsig_sym decFloatMax
	.addrsig_sym decFloatCopyAbs
	.addrsig_sym decNumCompare
	.addrsig_sym decCanonical