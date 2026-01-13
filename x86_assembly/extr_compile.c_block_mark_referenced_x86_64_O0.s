	.text
	.p2align	4, 0x90                         # -- Begin function block_mark_referenced
block_mark_referenced:                  # @block_mark_referenced
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	TOP(%rip), %rax
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -12(%rbp)
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, (%rax)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	block_mark_referenced
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	block_mark_referenced
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TOP
	.p2align	3
TOP:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_mark_referenced
	.addrsig_sym TOP