	.text
	.p2align	4, 0x90                         # -- Begin function stbi__get_chunk_header
stbi__get_chunk_header:                 # @stbi__get_chunk_header
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	stbi__get32be@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdi
	callq	stbi__get32be@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__get_chunk_header
	.addrsig_sym stbi__get32be