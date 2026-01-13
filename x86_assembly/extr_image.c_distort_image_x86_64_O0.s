	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function distort_image
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	distort_image
	.p2align	4, 0x90
distort_image:                          # @distort_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	%xmm2, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	rgb_to_hsv@PLT
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	$1, %edx
	callq	scale_image_channel@PLT
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	$2, %edx
	callq	scale_image_channel@PLT
	movl	$0, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movl	-16(%rbp), %ecx
	imull	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	addss	-20(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	xorps	%xmm0, %xmm0
	ucomiss	(%rax,%rcx,4), %xmm0
	jbe	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	hsv_to_rgb@PLT
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	constrain_image@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rgb_to_hsv
	.addrsig_sym scale_image_channel
	.addrsig_sym hsv_to_rgb
	.addrsig_sym constrain_image