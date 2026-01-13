	.text
	.globl	decFloatMax                     # -- Begin function decFloatMax
	.p2align	4, 0x90
decFloatMax:                            # @decFloatMax
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	DFISNAN@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.1:
	movq	-32(%rbp), %rdi
	callq	DFISNAN@PLT
	cmpq	$0, %rax
	jne	.LBB0_3
# %bb.2:
	movq	-24(%rbp), %rdi
	callq	DFISSNAN@PLT
	cmpq	$0, %rax
	je	.LBB0_4
.LBB0_3:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	decNaNs@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_4:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	decCanonical@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_5:
	movq	-32(%rbp), %rdi
	callq	DFISNAN@PLT
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.6:
	movq	-32(%rbp), %rdi
	callq	DFISSNAN@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.7:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	decNaNs@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_8:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	decCanonical@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_9:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	$1, %edx
	callq	decNumCompare@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jl	.LBB0_11
# %bb.10:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	decCanonical@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_11:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	decCanonical@PLT
	movq	%rax, -8(%rbp)
.LBB0_12:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISNAN
	.addrsig_sym DFISSNAN
	.addrsig_sym decNaNs
	.addrsig_sym decCanonical
	.addrsig_sym decNumCompare