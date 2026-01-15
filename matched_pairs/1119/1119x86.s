	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function normalize_image2
.LCPI0_0:
	.quad	0x3e112e0be826d695              # double 1.0000000000000001E-9
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	0x3f800000                      # float 1
	.text
	.globl	normalize_image2
	.p2align	4, 0x90
normalize_image2:                       # @normalize_image2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, -8(%rbp)
	movl	(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-20(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movq	8(%rdx), %rax
	movl	-20(%rbp), %ecx
	imull	16(%rdx), %ecx
	imull	20(%rdx), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -24(%rbp)
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-24(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_16
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -20(%rbp)
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movl	-20(%rbp), %eax
	movl	16(%rdx), %ecx
	imull	20(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_14
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	8(%rsi), %rax
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	imull	16(%rsi), %edx
	imull	20(%rsi), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=2
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=2
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	ucomiss	(%rax,%rcx,4), %xmm0
	jbe	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=2
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_7
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_16:
	movl	$0, -20(%rbp)
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-20(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_22
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	subss	(%rax,%rcx,4), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_17 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_17
.LBB0_22:
	movl	$0, -24(%rbp)
.LBB0_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-24(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_30
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=1
	movl	$0, -20(%rbp)
.LBB0_25:                               #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movl	-20(%rbp), %eax
	movl	20(%rdx), %ecx
	imull	16(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_28
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=2
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	8(%rsi), %rax
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	imull	16(%rsi), %edx
	imull	20(%rsi), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	subss	(%rax,%rcx,4), %xmm0
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	subss	(%rax,%rcx,4), %xmm1
	divss	%xmm1, %xmm0
	movq	8(%rsi), %rax
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	imull	16(%rsi), %edx
	imull	20(%rsi), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.27:                               #   in Loop: Header=BB0_25 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_25
.LBB0_28:                               #   in Loop: Header=BB0_23 Depth=1
	jmp	.LBB0_29
.LBB0_29:                               #   in Loop: Header=BB0_23 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_23
.LBB0_30:
	movq	-8(%rbp), %rdi
	callq	free@PLT
	movq	-16(%rbp), %rdi
	callq	free@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym free