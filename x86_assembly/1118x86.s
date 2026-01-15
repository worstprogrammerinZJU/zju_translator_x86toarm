	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function normalize_image
.LCPI0_0:
	.long	0xc97423f0                      # float -999999
.LCPI0_1:
	.long	0x4b18967f                      # float 9999999
.LCPI0_3:
	.long	0x3f800000                      # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_2:
	.quad	0x3e112e0be826d695              # double 1.0000000000000001E-9
	.text
	.globl	normalize_image
	.p2align	4, 0x90
normalize_image:                        # @normalize_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -8(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	movl	$0, -4(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	movl	(%rdx), %ecx
	imull	4(%rdx), %ecx
	imull	8(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movslq	-4(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -16(%rbp)
	movss	-16(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -8(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	-12(%rbp), %xmm0
	jbe	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	subss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_10
# %bb.9:
	xorps	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
.LBB0_10:
	movl	$0, -4(%rbp)
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	movl	8(%rdx), %ecx
	imull	4(%rdx), %ecx
	imull	(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rcx
	movslq	-4(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	subss	-8(%rbp), %xmm0
	movss	-12(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	subss	-8(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movq	16(%rax), %rax
	movslq	-4(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_14:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig