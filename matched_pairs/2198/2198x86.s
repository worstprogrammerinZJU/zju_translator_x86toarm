	.text
	.p2align	4, 0x90                         # -- Begin function stbi__get16be
stbi__get16be:                          # @stbi__get16be
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	shll	$8, %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, %ecx
	movl	-16(%rbp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__get16be
	.addrsig_sym stbi__get8