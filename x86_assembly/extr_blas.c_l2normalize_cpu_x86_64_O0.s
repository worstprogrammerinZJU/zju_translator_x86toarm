	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function l2normalize_cpu
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	l2normalize_cpu
	.p2align	4, 0x90
l2normalize_cpu:                        # @l2normalize_cpu
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
                                        #       Child Loop BB0_9 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_16
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -40(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
                                        #       Child Loop BB0_9 Depth 3
	movl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_14
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	xorps	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	$0, -36(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-32(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	-36(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	%ecx, %eax
	addl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movl	$2, %edi
	callq	powf@PLT
	cvtsi2ss	%rax, %xmm0
	addss	-44(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	sqrtf@PLT
	movss	%xmm0, -44(%rbp)
	movl	$0, -36(%rbp)
.LBB0_9:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=3
	movl	-32(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	-36(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	%ecx, %eax
	addl	-40(%rbp), %eax
	movl	%eax, -52(%rbp)
	movss	-44(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	(%rax,%rcx,4), %xmm0
	divss	-44(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_9
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_3
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_16:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym powf
	.addrsig_sym sqrtf