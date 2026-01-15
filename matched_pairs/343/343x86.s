	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function denormalize_connected_layer
.LCPI0_0:
	.quad	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
.LCPI0_1:
	.quad	0x3ff0000000000000              # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_2:
	.long	0x3f800000                      # float 1
	.text
	.globl	denormalize_connected_layer
	.p2align	4, 0x90
denormalize_connected_layer:            # @denormalize_connected_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	$0, -4(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rcx
	movslq	-4(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -28(%rbp)                # 4-byte Spill
	movq	16(%rax), %rax
	movslq	-4(%rbp), %rcx
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	addsd	(%rax,%rcx,8), %xmm0
	callq	sqrt@PLT
	movaps	%xmm0, %xmm1
	movss	-28(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	$0, -8(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-8(%rbp), %eax
	cmpl	24(%rcx), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-24(%rbp), %rdx                 # 8-byte Reload
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	32(%rdx), %rax
	movl	-4(%rbp), %ecx
	imull	24(%rdx), %ecx
	addl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	48(%rax), %rcx
	movslq	-4(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	-12(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movq	40(%rax), %rcx
	movslq	-4(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movd	%xmm0, %esi
	xorl	$2147483648, %esi               # imm = 0x80000000
	movd	%esi, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rcx,%rdx,4)
	movq	8(%rax), %rcx
	movslq	-4(%rbp), %rdx
	movss	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rcx,%rdx,4)
	movq	48(%rax), %rcx
	movslq	-4(%rbp), %rdx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rcx,%rdx,4)
	movq	16(%rax), %rax
	movslq	-4(%rbp), %rcx
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rcx,8)
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sqrt