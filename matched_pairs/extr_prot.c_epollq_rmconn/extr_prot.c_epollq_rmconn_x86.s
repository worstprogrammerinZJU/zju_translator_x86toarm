	.text
	.p2align	4, 0x90                         # -- Begin function epollq_rmconn
epollq_rmconn:                          # @epollq_rmconn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, epollq(%rip)
	je	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	epollq(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	epollq(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, epollq(%rip)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_5:
	movq	-24(%rbp), %rax
	movq	%rax, epollq(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	epollq
	.p2align	3
epollq:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym epollq_rmconn
	.addrsig_sym epollq