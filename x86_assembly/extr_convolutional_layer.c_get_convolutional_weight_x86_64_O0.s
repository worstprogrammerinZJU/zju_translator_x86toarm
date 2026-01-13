	.text
	.globl	get_convolutional_weight        # -- Begin function get_convolutional_weight
	.p2align	4, 0x90
get_convolutional_weight:               # @get_convolutional_weight
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rcx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	movl	%edi, -4(%rbp)
	movl	(%rcx), %eax
	movl	%eax, -8(%rbp)
	movl	(%rcx), %eax
	movl	%eax, -12(%rbp)
	movl	4(%rcx), %eax
	cltd
	idivl	8(%rcx)
	movl	%eax, %ecx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, -16(%rbp)
	movl	-12(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	16(%rax), %rcx
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	cltq
	addq	%rax, %rcx
	callq	float_to_image@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym float_to_image