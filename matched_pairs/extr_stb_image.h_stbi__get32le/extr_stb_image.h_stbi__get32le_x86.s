	.text
	.p2align	4, 0x90                         # -- Begin function stbi__get32le
stbi__get32le:                          # @stbi__get32le
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	stbi__get16le@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	stbi__get16le@PLT
	movl	%eax, %ecx
	movl	-16(%rbp), %eax                 # 4-byte Reload
	shll	$16, %ecx
	addl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__get32le
	.addrsig_sym stbi__get16le