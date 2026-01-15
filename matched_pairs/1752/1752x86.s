	.text
	.globl	get_network_image_layer         # -- Begin function get_network_image_layer
	.p2align	4, 0x90
get_network_image_layer:                # @get_network_image_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_4
# %bb.1:
	cmpq	$0, -40(%rbp)
	je	.LBB0_4
# %bb.2:
	cmpq	$0, -48(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	-56(%rbp), %ecx
	callq	float_to_image@PLT
	movl	%eax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	leaq	-64(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset@PLT
	movl	-64(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB0_5:
	movl	-8(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym float_to_image