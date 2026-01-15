	.text
	.globl	upsample_cpu                    # -- Begin function upsample_cpu
	.p2align	4, 0x90
upsample_cpu:                           # @upsample_cpu
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	24(%rbp), %rax
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movss	%xmm0, -32(%rbp)
	movl	$0, -48(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
                                        #         Child Loop BB0_7 Depth 4
	movl	-48(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_19
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -44(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
                                        #         Child Loop BB0_7 Depth 4
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_17
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -40(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_7 Depth 4
	movl	-40(%rbp), %eax
	movl	-16(%rbp), %ecx
	imull	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_15
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movl	$0, -36(%rbp)
.LBB0_7:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-36(%rbp), %eax
	movl	-12(%rbp), %ecx
	imull	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_13
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=4
	movl	-48(%rbp), %eax
	imull	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	-44(%rbp), %ecx
	imull	-12(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	movl	-40(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, %ecx
	movl	-64(%rbp), %eax                 # 4-byte Reload
	imull	-12(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movl	-36(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, %ecx
	movl	-60(%rbp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	imull	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	imull	-28(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	-44(%rbp), %ecx
	imull	-12(%rbp), %ecx
	imull	-16(%rbp), %ecx
	imull	-28(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	%ecx, %eax
	movl	-40(%rbp), %ecx
	imull	-12(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	%ecx, %eax
	addl	-36(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, 16(%rbp)
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=4
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movq	24(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	jmp	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=4
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	24(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm2            # xmm2 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=4
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=4
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_7
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=3
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=3
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_5
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_3
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_1
.LBB0_19:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig