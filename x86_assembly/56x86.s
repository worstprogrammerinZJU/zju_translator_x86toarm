	.text
	.globl	swri_audio_convert_free         # -- Begin function swri_audio_convert_free
	.p2align	4, 0x90
swri_audio_convert_free:                # @swri_audio_convert_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	av_freep@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym av_freep