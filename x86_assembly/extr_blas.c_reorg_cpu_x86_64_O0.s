	.text
	.globl	reorg_cpu                       # -- Begin function reorg_cpu
	.p2align	4, 0x90
reorg_cpu:                              # @reorg_cpu
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
	movl	-20(%rbp), %eax
	movl	-28(%rbp), %ecx
	imull	-28(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -48(%rbp)
	movl	$0, -32(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
                                        #         Child Loop BB0_7 Depth 4
	movl	-32(%rbp), %eax
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
	cmpl	-16(%rbp), %eax
	jge	.LBB0_15
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movl	$0, -36(%rbp)
.LBB0_7:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_13
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=4
	movl	-36(%rbp), %eax
	movl	-12(%rbp), %ecx
	movl	-40(%rbp), %edx
	movl	-16(%rbp), %esi
	movl	-44(%rbp), %edi
	movl	-20(%rbp), %r8d
	imull	-32(%rbp), %r8d
	addl	%r8d, %edi
	imull	%edi, %esi
	addl	%esi, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -52(%rbp)
	movl	-44(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	movl	%edx, -56(%rbp)
	movl	-44(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	movl	-60(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	-80(%rbp), %eax                 # 4-byte Reload
	addl	%edx, %eax
	movl	%eax, -64(%rbp)
	movl	-40(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movl	-60(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, %ecx
	movl	-76(%rbp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %eax
	movl	-12(%rbp), %ecx
	imull	-28(%rbp), %ecx
	movl	-68(%rbp), %edx
	movl	-16(%rbp), %esi
	imull	-28(%rbp), %esi
	movl	-56(%rbp), %edi
	movl	-48(%rbp), %r8d
	imull	-32(%rbp), %r8d
	addl	%r8d, %edi
	imull	%edi, %esi
	addl	%esi, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, 16(%rbp)
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=4
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	24(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	jmp	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=4
	movq	-8(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	24(%rbp), %rax
	movslq	-52(%rbp), %rcx
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
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_19:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig