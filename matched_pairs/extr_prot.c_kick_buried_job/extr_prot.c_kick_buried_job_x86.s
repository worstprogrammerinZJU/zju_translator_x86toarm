	.text
	.p2align	4, 0x90                         # -- Begin function kick_buried_job
kick_buried_job:                        # @kick_buried_job
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	walresvupdate@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rdi
	callq	remove_buried_job@PLT
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	enqueue_job@PLT
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	jne	.LBB0_4
# %bb.3:
	movl	$1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	xorl	%edx, %edx
	callq	bury_job@PLT
	movl	$0, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym kick_buried_job
	.addrsig_sym walresvupdate
	.addrsig_sym remove_buried_job
	.addrsig_sym enqueue_job
	.addrsig_sym bury_job