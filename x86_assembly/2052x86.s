	.text
	.p2align	4, 0x90                         # -- Begin function next_awaited_job
next_awaited_job:                       # @next_awaited_job
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	tubes(%rip), %rax
	jae	.LBB0_14
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	tubes+8(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jle	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_13
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	$0, 32(%rax)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_12
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_12
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	job_pri_less@PLT
	cmpq	$0, %rax
	je	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_14:
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	tubes
	.p2align	3
tubes:
	.zero	16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym next_awaited_job
	.addrsig_sym job_pri_less
	.addrsig_sym tubes