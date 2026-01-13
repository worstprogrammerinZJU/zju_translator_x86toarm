	.text
	.p2align	4, 0x90                         # -- Begin function remove_reserved_job
remove_reserved_job:                    # @remove_reserved_job
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	is_job_reserved_by_conn@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	remove_this_reserved_job@PLT
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym remove_reserved_job
	.addrsig_sym is_job_reserved_by_conn
	.addrsig_sym remove_this_reserved_job