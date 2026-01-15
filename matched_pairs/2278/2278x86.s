	.text
	.p2align	4, 0x90                         # -- Begin function stbi__psd_test
stbi__psd_test:                         # @stbi__psd_test
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	stbi__get32be@PLT
	cmpl	$943870035, %eax                # imm = 0x38425053
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
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
	.addrsig_sym stbi__psd_test
	.addrsig_sym stbi__get32be
	.addrsig_sym stbi__rewind