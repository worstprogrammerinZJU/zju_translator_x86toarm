	.text
	.globl	load_image                      # -- Begin function load_image
	.p2align	4, 0x90
load_image:                             # @load_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	load_image_stb@PLT
	movq	%rax, -8(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB0_5
# %bb.1:
	cmpl	$0, -20(%rbp)
	je	.LBB0_5
# %bb.2:
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.LBB0_4
# %bb.3:
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	je	.LBB0_5
.LBB0_4:
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rdi
	callq	resize_image@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	free_image@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_image_stb
	.addrsig_sym resize_image
	.addrsig_sym free_image