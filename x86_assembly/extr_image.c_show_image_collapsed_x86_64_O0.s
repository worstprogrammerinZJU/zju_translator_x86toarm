	.text
	.globl	show_image_collapsed            # -- Begin function show_image_collapsed
	.p2align	4, 0x90
show_image_collapsed:                   # @show_image_collapsed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movl	$1, %esi
	callq	collapse_image_layers@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	$1, %edx
	callq	show_image@PLT
	movl	-20(%rbp), %edi
	callq	free_image@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym collapse_image_layers
	.addrsig_sym show_image
	.addrsig_sym free_image