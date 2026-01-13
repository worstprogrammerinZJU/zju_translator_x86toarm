	.text
	.p2align	4, 0x90                         # -- Begin function resample_row_1
resample_row_1:                         # @resample_row_1
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, %edi
	callq	STBI_NOTUSED@PLT
	movq	-24(%rbp), %rax
	movl	%eax, %edi
	callq	STBI_NOTUSED@PLT
	movl	-28(%rbp), %edi
	callq	STBI_NOTUSED@PLT
	movl	-32(%rbp), %edi
	callq	STBI_NOTUSED@PLT
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resample_row_1
	.addrsig_sym STBI_NOTUSED