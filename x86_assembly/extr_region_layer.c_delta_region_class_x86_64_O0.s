	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function delta_region_class
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	delta_region_class
	.p2align	4, 0x90
delta_region_class:                     # @delta_region_class
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	32(%rbp), %eax
	movq	24(%rbp), %rax
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_9
# %bb.1:
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	cmpl	$0, -24(%rbp)
	jl	.LBB0_8
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	16(%rbp), %edx
	imull	-24(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	-56(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-60(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -64(%rbp)
	movl	$0, -48(%rbp)
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-60(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	16(%rbp), %edx
	movl	-64(%rbp), %esi
	addl	-48(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	xorps	%xmm1, %xmm1
	subss	(%rax,%rcx,4), %xmm1
	mulss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	16(%rbp), %edx
	movl	-64(%rbp), %esi
	addl	-48(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_4
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	16(%rbp), %edx
	imull	-24(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	(%rax,%rcx,4), %xmm1
	mulss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	16(%rbp), %edx
	imull	-24(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_2
.LBB0_8:
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	24(%rbp), %rax
	addss	(%rax), %xmm0
	movss	%xmm0, (%rax)
	jmp	.LBB0_19
.LBB0_9:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_10
	jp	.LBB0_10
	jmp	.LBB0_12
.LBB0_10:
	cmpl	$0, 32(%rbp)
	je	.LBB0_12
# %bb.11:
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	16(%rbp), %edx
	imull	-24(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	(%rax,%rcx,4), %xmm1
	mulss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	16(%rbp), %edx
	imull	-24(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	jmp	.LBB0_19
.LBB0_12:
	movl	$0, -52(%rbp)
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_18
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	-52(%rbp), %edx
	movl	-24(%rbp), %esi
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	%esi, %edx
	cmovel	%ecx, %eax
	cvtsi2ss	%eax, %xmm1
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	16(%rbp), %edx
	imull	-52(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	subss	(%rax,%rcx,4), %xmm1
	mulss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	16(%rbp), %edx
	imull	-52(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movl	-52(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	16(%rbp), %edx
	imull	-52(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	24(%rbp), %rax
	addss	(%rax), %xmm0
	movss	%xmm0, (%rax)
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_13
.LBB0_18:
	jmp	.LBB0_19
.LBB0_19:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig