	.text
	.globl	saturate_image                  # -- Begin function saturate_image
	.p2align	4, 0x90
saturate_image:                         # @saturate_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movss	%xmm0, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	rgb_to_hsv@PLT
	movl	-4(%rbp), %edi
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movl	$1, %esi
	callq	scale_image_channel@PLT
	movl	-4(%rbp), %edi
	callq	hsv_to_rgb@PLT
	movl	-4(%rbp), %edi
	callq	constrain_image@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rgb_to_hsv
	.addrsig_sym scale_image_channel
	.addrsig_sym hsv_to_rgb
	.addrsig_sym constrain_image