	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function hierarchy_top_prediction
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	hierarchy_top_prediction
	.p2align	4, 0x90
hierarchy_top_prediction:               # @hierarchy_top_prediction
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movl	%edx, -32(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	xorps	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -44(%rbp)
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-40(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	.LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=2
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-40(%rbp), %rdx
	addl	(%rcx,%rdx,4), %eax
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movslq	-40(%rbp), %rsi
	addl	(%rdx,%rsi,4), %ecx
	imull	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	-48(%rbp), %xmm0
	jbe	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=2
	movl	-56(%rbp), %eax
	movl	%eax, -52(%rbp)
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=2
	jmp	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_2
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	mulss	-48(%rbp), %xmm0
	ucomiss	-28(%rbp), %xmm0
	jbe	.LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	mulss	-48(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-52(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-52(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jge	.LBB0_10
# %bb.9:
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_14
.LBB0_11:
	cmpl	$0, -40(%rbp)
	jne	.LBB0_13
# %bb.12:
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_15
.LBB0_13:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-40(%rbp), %rdx
	movslq	(%rcx,%rdx,4), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_15:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig