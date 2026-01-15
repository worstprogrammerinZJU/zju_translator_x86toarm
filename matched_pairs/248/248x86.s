	.text
	.globl	block_append                    # -- Begin function block_append
	.p2align	4, 0x90
block_append:                           # @block_append
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB0_5
# %bb.1:
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_3
# %bb.2:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	inst_join@PLT
	jmp	.LBB0_4
.LBB0_3:
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 8(%rax)
.LBB0_4:
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_5:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_join