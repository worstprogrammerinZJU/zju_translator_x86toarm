	.text
	.globl	convolutional_out_height        # -- Begin function convolutional_out_height
	.p2align	4, 0x90
convolutional_out_height:               # @convolutional_out_height
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	subl	-8(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	addl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig