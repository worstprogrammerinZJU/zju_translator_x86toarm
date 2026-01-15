	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function fill_hierarchy
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	fill_hierarchy
	.p2align	4, 0x90
fill_hierarchy:                         # @fill_hierarchy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_3
	jp	.LBB0_3
	jmp	.LBB0_7
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -32(%rbp)
.LBB0_4:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -32(%rbp)
	jl	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax,%rcx,4)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_4
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_9:
	movl	$0, -40(%rbp)
	movl	$0, -28(%rbp)
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_19 Depth 2
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB0_25
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$1, -44(%rbp)
	movl	$0, -36(%rbp)
.LBB0_12:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-28(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	.LBB0_17
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	movq	-8(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_14
	jp	.LBB0_14
	jmp	.LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$0, -44(%rbp)
	jmp	.LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=2
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_12
.LBB0_17:                               #   in Loop: Header=BB0_10 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB0_23
# %bb.18:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$0, -36(%rbp)
.LBB0_19:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-28(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	.LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=2
	movss	SECRET_NUM(%rip), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_19
.LBB0_22:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
# %bb.24:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_10
.LBB0_25:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SECRET_NUM
	.p2align	2
SECRET_NUM:
	.long	0x00000000                      # float 0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SECRET_NUM