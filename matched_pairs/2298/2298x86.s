	.text
	.p2align	4, 0x90                         # -- Begin function stbi__tga_read_rgb16
stbi__tga_read_rgb16:                   # @stbi__tga_read_rgb16
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	stbi__get16le@PLT
	movl	%eax, -20(%rbp)
	movl	$31, -24(%rbp)
	movl	-20(%rbp), %eax
	sarl	$10, %eax
	andl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %eax
	sarl	$5, %eax
	andl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-20(%rbp), %eax
	andl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
	imull	$255, -28(%rbp), %eax
	movl	$31, %ecx
	cltd
	idivl	%ecx
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	imull	$255, -32(%rbp), %eax
	movl	$31, %ecx
	cltd
	idivl	%ecx
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	imull	$255, -36(%rbp), %eax
	movl	$31, %ecx
	cltd
	idivl	%ecx
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__tga_read_rgb16
	.addrsig_sym stbi__get16le