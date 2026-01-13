	.text
	.globl	gemm_bin                        # -- Begin function gemm_bin
	.p2align	4, 0x90
gemm_bin:                               # @gemm_bin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	32(%rbp), %eax
	movq	24(%rbp), %rax
	movl	16(%rbp), %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_6 Depth 3
                                        #       Child Loop BB0_11 Depth 3
	movl	-44(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_19
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -52(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
                                        #       Child Loop BB0_11 Depth 3
	movl	-52(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_17
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -53(%rbp)
	cmpb	$0, -53(%rbp)
	je	.LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -48(%rbp)
.LBB0_6:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-48(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=3
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %ecx
	imull	16(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	24(%rbp), %rax
	movl	-44(%rbp), %ecx
	imull	32(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movslq	%ecx, %rcx
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=3
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_6
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -48(%rbp)
.LBB0_11:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-48(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=3
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %ecx
	imull	16(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movq	24(%rbp), %rax
	movl	-44(%rbp), %ecx
	imull	32(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=3
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_11
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_3
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_19:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig