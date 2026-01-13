	.text
	.p2align	4, 0x90                         # -- Begin function stbi__jpeg_info
stbi__jpeg_info:                        # @stbi__jpeg_info
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$8, %edi
	callq	stbi__malloc@PLT
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	stbi__jpeg_info_raw@PLT
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rdi
	callq	STBI_FREE@PLT
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_info
	.addrsig_sym stbi__malloc
	.addrsig_sym stbi__jpeg_info_raw
	.addrsig_sym STBI_FREE