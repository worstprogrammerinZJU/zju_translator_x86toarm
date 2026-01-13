	.text
	.p2align	4, 0x90                         # -- Begin function available_samples
available_samples:                      # @available_samples
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	av_get_bytes_per_sample@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	av_sample_fmt_is_planar@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	callq	av_get_channel_layout_nb_channels@PLT
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym available_samples
	.addrsig_sym av_get_bytes_per_sample
	.addrsig_sym av_sample_fmt_is_planar
	.addrsig_sym av_get_channel_layout_nb_channels