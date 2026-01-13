	.text
	.globl	load_image_paths_gray           # -- Begin function load_image_paths_gray
	.p2align	4, 0x90
load_image_paths_gray:                  # @load_image_paths_gray
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -40(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	$3, %ecx
	callq	load_image@PLT
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	grayscale_image@PLT
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	free_image@PLT
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-44(%rbp), %edx
	movq	-8(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-56(%rbp), %eax
	imull	-52(%rbp), %eax
	imull	-48(%rbp), %eax
	movl	%eax, -12(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym load_image
	.addrsig_sym grayscale_image
	.addrsig_sym free_image