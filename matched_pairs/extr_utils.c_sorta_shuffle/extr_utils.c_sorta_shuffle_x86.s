	.text
	.globl	sorta_shuffle                   # -- Begin function sorta_shuffle
	.p2align	4, 0x90
sorta_shuffle:                          # @sorta_shuffle
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	imulq	-40(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-32(%rbp)
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	imulq	%rcx, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-32(%rbp)
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	imulq	-24(%rbp), %rax
	addq	%rax, %rdi
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	shuffle@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym shuffle