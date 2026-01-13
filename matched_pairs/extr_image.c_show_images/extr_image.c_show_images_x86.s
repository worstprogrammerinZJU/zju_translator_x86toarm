	.text
	.globl	show_images                     # -- Begin function show_images
	.p2align	4, 0x90
show_images:                            # @show_images
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	collapse_images_vert@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	callq	normalize_image@PLT
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	save_image@PLT
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rsi
	movl	$1, %edx
	callq	show_image@PLT
	movl	-28(%rbp), %edi
	callq	free_image@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym collapse_images_vert
	.addrsig_sym normalize_image
	.addrsig_sym save_image
	.addrsig_sym show_image
	.addrsig_sym free_image