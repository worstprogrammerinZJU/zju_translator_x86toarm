	.text
	.p2align	4, 0x90                         # -- Begin function stbi__stdio_eof
stbi__stdio_eof:                        # @stbi__stdio_eof
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	feof@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__stdio_eof
	.addrsig_sym feof