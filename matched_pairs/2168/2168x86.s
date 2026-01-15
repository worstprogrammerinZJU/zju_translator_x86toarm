	.text
	.p2align	4, 0x90                         # -- Begin function stbi__blinn_8x8
stbi__blinn_8x8:                        # @stbi__blinn_8x8
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	addl	$128, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	-12(%rbp), %ecx
	shrl	$8, %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__blinn_8x8