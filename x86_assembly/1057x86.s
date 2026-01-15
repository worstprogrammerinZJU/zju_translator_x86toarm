	.text
	.p2align	4, 0x90                         # -- Begin function increment_layer
increment_layer:                        # @increment_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	4(%rcx), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	12(%rax), %ecx
	movl	%ecx, 12(%rax)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	16(%rax), %ecx
	movl	%ecx, 16(%rax)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	20(%rax), %ecx
	movl	%ecx, 20(%rax)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym increment_layer