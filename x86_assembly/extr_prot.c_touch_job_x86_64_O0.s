	.text
	.p2align	4, 0x90                         # -- Begin function touch_job
touch_job:                              # @touch_job
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	is_job_reserved_by_conn@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	nanoseconds@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	$0, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym touch_job
	.addrsig_sym is_job_reserved_by_conn
	.addrsig_sym nanoseconds