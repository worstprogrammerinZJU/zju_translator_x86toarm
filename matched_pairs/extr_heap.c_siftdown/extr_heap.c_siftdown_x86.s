	.text
	.p2align	4, 0x90                         # -- Begin function siftdown
siftdown:                               # @siftdown
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	subq	$1, %rax
	shrq	$1, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	less@PLT
	cmpq	$0, %rax
	je	.LBB0_4
.LBB0_3:
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	swap@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_1
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym siftdown
	.addrsig_sym less
	.addrsig_sym swap