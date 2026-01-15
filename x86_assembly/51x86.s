	.text
	.p2align	4, 0x90                         # -- Begin function conv_fltp_to_s16_2ch_neon
conv_fltp_to_s16_2ch_neon:              # @conv_fltp_to_s16_2ch_neon
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	$2, %ecx
	callq	swri_oldapi_conv_fltp_to_s16_2ch_neon@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conv_fltp_to_s16_2ch_neon
	.addrsig_sym swri_oldapi_conv_fltp_to_s16_2ch_neon