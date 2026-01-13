	.text
	.p2align	4, 0x90                         # -- Begin function conv_flt_to_s16_neon
conv_flt_to_s16_neon:                   # @conv_flt_to_s16_neon
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movl	-20(%rbp), %edx
	callq	swri_oldapi_conv_flt_to_s16_neon@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conv_flt_to_s16_neon
	.addrsig_sym swri_oldapi_conv_flt_to_s16_neon