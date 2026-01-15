	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function correct_region_boxes
.LCPI0_0:
	.quad	0x4000000000000000              # double 2
	.text
	.globl	correct_region_boxes
	.p2align	4, 0x90
correct_region_boxes:                   # @correct_region_boxes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	cvtsi2ssl	-24(%rbp), %xmm1
	cvtsi2ssl	-16(%rbp), %xmm0
	divss	%xmm0, %xmm1
	cvtsi2ssl	-28(%rbp), %xmm0
	cvtsi2ssl	-20(%rbp), %xmm2
	divss	%xmm2, %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_2
# %bb.1:
	movl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	cltd
	idivl	-16(%rbp)
	movl	%eax, -40(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-16(%rbp), %eax
	imull	-28(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -36(%rbp)
.LBB0_3:
	movl	$0, -32(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	cvtsi2sdl	-56(%rbp), %xmm0
	movl	-24(%rbp), %eax
	subl	-36(%rbp), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	cvtsi2sdl	-24(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	cvtsi2ssl	-36(%rbp), %xmm1
	cvtsi2ssl	-24(%rbp), %xmm2
	divss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm0
	movl	-28(%rbp), %eax
	subl	-40(%rbp), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	cvtsi2ssl	-40(%rbp), %xmm1
	cvtsi2ssl	-28(%rbp), %xmm2
	divss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	cvtsi2ssl	-24(%rbp), %xmm0
	cvtsi2ssl	-36(%rbp), %xmm1
	divss	%xmm1, %xmm0
	mulss	-48(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	cvtsi2ssl	-28(%rbp), %xmm0
	cvtsi2ssl	-40(%rbp), %xmm1
	divss	%xmm1, %xmm0
	mulss	-44(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	cmpl	$0, 16(%rbp)
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-16(%rbp), %eax
	imull	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	cvtsi2ssl	-16(%rbp), %xmm0
	mulss	-48(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	movl	-20(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	cvtsi2ssl	-20(%rbp), %xmm0
	mulss	-44(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-48(%rbp), %rcx
	movq	%rcx, 8(%rax)
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_4
.LBB0_9:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig