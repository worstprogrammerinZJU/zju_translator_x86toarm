	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function letterbox_image
.LCPI0_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	letterbox_image
	.p2align	4, 0x90
letterbox_image:                        # @letterbox_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -64(%rbp)
	cvtsi2ssl	-52(%rbp), %xmm1
	cvtsi2ssl	-32(%rbp), %xmm0
	divss	%xmm0, %xmm1
	cvtsi2ssl	-56(%rbp), %xmm0
	cvtsi2ssl	-28(%rbp), %xmm2
	divss	%xmm2, %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_2
# %bb.1:
	movl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-28(%rbp), %eax
	imull	-52(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	movl	%eax, -64(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-56(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-32(%rbp), %eax
	imull	-56(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -60(%rbp)
.LBB0_3:
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-24(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movl	-88(%rbp), %esi
	callq	resize_image@PLT
	movl	%edx, -104(%rbp)
	movq	%rax, -112(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	make_image@PLT
	movl	%edx, -120(%rbp)
	movq	%rax, -128(%rbp)
	movl	-120(%rbp), %eax
	movl	%eax, -8(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	movl	-136(%rbp), %esi
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	fill_image@PLT
	movl	-52(%rbp), %r8d
	movl	-60(%rbp), %eax
	subl	%eax, %r8d
	movl	%r8d, %eax
	shrl	$31, %eax
	addl	%eax, %r8d
	sarl	%r8d
	movl	-56(%rbp), %r9d
	movl	-64(%rbp), %eax
	subl	%eax, %r9d
	movl	%r9d, %eax
	shrl	$31, %eax
	addl	%eax, %r9d
	sarl	%r9d
	movl	-72(%rbp), %eax
	movl	%eax, -152(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	movl	-152(%rbp), %esi
	movl	-8(%rbp), %eax
	movl	%eax, -168(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdx
	movl	-168(%rbp), %ecx
	callq	embed_image@PLT
	movl	-72(%rbp), %eax
	movl	%eax, -184(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	movl	-184(%rbp), %esi
	callq	free_image@PLT
	movl	-8(%rbp), %eax
	movl	%eax, -200(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movl	-200(%rbp), %edx
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resize_image
	.addrsig_sym make_image
	.addrsig_sym fill_image
	.addrsig_sym embed_image
	.addrsig_sym free_image