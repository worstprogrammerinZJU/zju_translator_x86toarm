	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function stbi__YCbCr_to_RGB_simd
.LCPI0_0:
	.long	0x3fe2d0e5                      # float 1.77199996
.LCPI0_1:
	.long	0x3eb0331e                      # float 0.344139993
.LCPI0_2:
	.long	0x3f36d1e1                      # float 0.714139997
.LCPI0_3:
	.long	0x3fb374bc                      # float 1.40199995
	.text
	.p2align	4, 0x90
stbi__YCbCr_to_RGB_simd:                # @stbi__YCbCr_to_RGB_simd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_19
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	shll	$20, %eax
	addl	$524288, %eax                   # imm = 0x80000
	movl	%eax, -48(%rbp)
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	subl	$128, %eax
	movl	%eax, -64(%rbp)
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	subl	$128, %eax
	movl	%eax, -68(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -96(%rbp)                 # 4-byte Spill
	movl	-64(%rbp), %eax
	movl	%eax, -100(%rbp)                # 4-byte Spill
	movss	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__float2fixed@PLT
	movl	-100(%rbp), %ecx                # 4-byte Reload
	movl	%eax, %edx
	movl	-96(%rbp), %eax                 # 4-byte Reload
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -88(%rbp)                 # 4-byte Spill
	movl	-64(%rbp), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	movss	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__float2fixed@PLT
	movl	-92(%rbp), %ecx                 # 4-byte Reload
	movl	%eax, %esi
	movl	-88(%rbp), %eax                 # 4-byte Reload
	xorl	%edx, %edx
	subl	%esi, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	movl	-68(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__float2fixed@PLT
	movl	-84(%rbp), %ecx                 # 4-byte Reload
	movl	%eax, %esi
	movl	-80(%rbp), %eax                 # 4-byte Reload
	xorl	%edx, %edx
	subl	%esi, %edx
	imull	%edx, %ecx
	andl	$-65536, %ecx                   # imm = 0xFFFF0000
	addl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -72(%rbp)                 # 4-byte Spill
	movl	-68(%rbp), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__float2fixed@PLT
	movl	-76(%rbp), %ecx                 # 4-byte Reload
	movl	%eax, %edx
	movl	-72(%rbp), %eax                 # 4-byte Reload
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %eax
	sarl	$20, %eax
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	sarl	$20, %eax
	movl	%eax, -56(%rbp)
	movl	-60(%rbp), %eax
	sarl	$20, %eax
	movl	%eax, -60(%rbp)
	cmpl	$255, -52(%rbp)
	jbe	.LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -52(%rbp)
	jge	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -52(%rbp)
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$255, -52(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$255, -56(%rbp)
	jbe	.LBB0_12
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -56(%rbp)
	jge	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$255, -56(%rbp)
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$255, -60(%rbp)
	jbe	.LBB0_17
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -60(%rbp)
	jge	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -60(%rbp)
	jmp	.LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$255, -60(%rbp)
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-56(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-60(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$255, 12(%rax)
	movl	-40(%rbp), %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
# %bb.18:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_19:
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__YCbCr_to_RGB_simd
	.addrsig_sym stbi__float2fixed