	.text
	.globl	visualize_convolutional_layer   # -- Begin function visualize_convolutional_layer
	.p2align	4, 0x90
visualize_convolutional_layer:          # @visualize_convolutional_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$304, %rsp                      # imm = 0x130
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-8(%rbp), %edi
	callq	get_weights@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	show_images@PLT
	movl	-8(%rbp), %edi
	callq	get_convolutional_image@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	movl	$1, %esi
	callq	collapse_image_layers@PLT
	movl	%eax, -40(%rbp)
	leaq	-304(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	callq	sprintf@PLT
	movl	-40(%rbp), %edi
	callq	free_image@PLT
	movq	-32(%rbp), %rax
	addq	$304, %rsp                      # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: Output"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_weights
	.addrsig_sym show_images
	.addrsig_sym get_convolutional_image
	.addrsig_sym collapse_image_layers
	.addrsig_sym sprintf
	.addrsig_sym free_image