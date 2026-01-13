	.text
	.p2align	4, 0x90                         # -- Begin function set_audiodata_fmt
set_audiodata_fmt:                      # @set_audiodata_fmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-12(%rbp), %edi
	callq	av_get_bytes_per_sample@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	-12(%rbp), %edi
	callq	av_sample_fmt_is_planar@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_audiodata_fmt
	.addrsig_sym av_get_bytes_per_sample
	.addrsig_sym av_sample_fmt_is_planar