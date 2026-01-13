	.text
	.globl	load_image_augment_paths        # -- Begin function load_image_augment_paths
	.p2align	4, 0x90
load_image_augment_paths:               # @load_image_augment_paths
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movss	%xmm1, -48(%rbp)
	movss	%xmm2, -52(%rbp)
	movss	%xmm3, -56(%rbp)
	movss	%xmm4, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -68(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	load_image_color@PLT
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %edx
	movl	-40(%rbp), %ecx
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	center_crop_image@PLT
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	random_augment_image@PLT
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	rand@PLT
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -140(%rbp)
	cmpl	$0, -140(%rbp)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	flip_image@PLT
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-56(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-60(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	random_distort_image@PLT
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	free_image@PLT
	movl	-92(%rbp), %edx
	movq	-8(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-104(%rbp), %eax
	imull	-100(%rbp), %eax
	imull	-96(%rbp), %eax
	movl	%eax, -12(%rbp)
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_1
.LBB0_9:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym load_image_color
	.addrsig_sym center_crop_image
	.addrsig_sym random_augment_image
	.addrsig_sym rand
	.addrsig_sym flip_image
	.addrsig_sym random_distort_image
	.addrsig_sym free_image