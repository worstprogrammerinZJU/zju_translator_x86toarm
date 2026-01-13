	.text
	.p2align	4, 0x90                         # -- Begin function stbi__cleanup_jpeg
stbi__cleanup_jpeg:                     # @stbi__cleanup_jpeg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %esi
	xorl	%edx, %edx
	callq	stbi__free_jpeg_components@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__cleanup_jpeg
	.addrsig_sym stbi__free_jpeg_components