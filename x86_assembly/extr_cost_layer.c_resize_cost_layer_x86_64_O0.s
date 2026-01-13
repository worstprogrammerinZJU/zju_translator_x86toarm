	.text
	.globl	resize_cost_layer               # -- Begin function resize_cost_layer
	.p2align	4, 0x90
resize_cost_layer:                      # @resize_cost_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	8(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	8(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 16(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc