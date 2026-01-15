	.text
	.p2align	4, 0x90                         # -- Begin function stbi__compute_y_16
stbi__compute_y_16:                     # @stbi__compute_y_16
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	imull	$77, -4(%rbp), %eax
	imull	$150, -8(%rbp), %ecx
	addl	%ecx, %eax
	imull	$29, -12(%rbp), %ecx
	addl	%ecx, %eax
	sarl	$8, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__compute_y_16