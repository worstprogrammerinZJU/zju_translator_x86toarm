	.text
	.p2align	4, 0x90                         # -- Begin function stbi__zreceive
stbi__zreceive:                         # @stbi__zreceive
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	stbi__fill_bits@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	-12(%rbp), %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	subl	$1, %ecx
	andl	%ecx, %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	movl	%ecx, 4(%rax)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__zreceive
	.addrsig_sym stbi__fill_bits