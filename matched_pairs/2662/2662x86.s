	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function avg_flipped_yolo
.LCPI0_0:
	.quad	0x4000000000000000              # double 2
	.text
	.globl	avg_flipped_yolo
	.p2align	4, 0x90
avg_flipped_yolo:                       # @avg_flipped_yolo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	16(%rbp), %rcx
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	movq	(%rcx), %rax
	movslq	8(%rcx), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movl	$0, -8(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
                                        #         Child Loop BB0_7 Depth 4
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movl	-8(%rbp), %eax
	cmpl	12(%rcx), %eax
	jge	.LBB0_18
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -4(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
                                        #         Child Loop BB0_7 Depth 4
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	-4(%rbp), %ecx
	movl	%ecx, -52(%rbp)                 # 4-byte Spill
	movl	16(%rax), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-52(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_16
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -12(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_7 Depth 4
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	20(%rcx), %eax
	jge	.LBB0_14
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movl	$0, -16(%rbp)
.LBB0_7:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movl	-16(%rbp), %eax
	movl	24(%rcx), %ecx
	addl	$4, %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_12
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=4
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movl	-16(%rbp), %eax
	imull	16(%rcx), %eax
	imull	12(%rcx), %eax
	imull	20(%rcx), %eax
	movl	-12(%rbp), %edx
	imull	16(%rcx), %edx
	imull	12(%rcx), %edx
	addl	%edx, %eax
	movl	-8(%rbp), %edx
	imull	16(%rcx), %edx
	addl	%edx, %eax
	addl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-16(%rbp), %eax
	imull	16(%rcx), %eax
	imull	12(%rcx), %eax
	imull	20(%rcx), %eax
	movl	-12(%rbp), %edx
	imull	16(%rcx), %edx
	imull	12(%rcx), %edx
	addl	%edx, %eax
	movl	-8(%rbp), %edx
	imull	16(%rcx), %edx
	addl	%edx, %eax
	movl	16(%rcx), %ecx
	subl	-4(%rbp), %ecx
	subl	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	cmpl	$0, -16(%rbp)
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=4
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=4
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=4
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_7
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=3
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_5
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_18:
	movl	$0, -4(%rbp)
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movslq	-4(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	addss	(%rcx,%rdx,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	(%rax), %rax
	movslq	-4(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_22:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig