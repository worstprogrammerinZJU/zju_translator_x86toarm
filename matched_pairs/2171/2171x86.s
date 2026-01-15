	.text
	.p2align	4, 0x90                         # -- Begin function stbi__bmp_test
stbi__bmp_test:                         # @stbi__bmp_test
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	stbi__bmp_test_raw@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__bmp_test
	.addrsig_sym stbi__bmp_test_raw
	.addrsig_sym stbi__rewind