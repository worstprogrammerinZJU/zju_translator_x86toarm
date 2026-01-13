	.text
	.globl	make_image                      # -- Begin function make_image
	.p2align	4, 0x90
make_image:                             # @make_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	make_empty_image@PLT
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %edi
	imull	-12(%rbp), %edi
	imull	-20(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_empty_image
	.addrsig_sym calloc