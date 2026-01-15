	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function bilinear_init
.LCPI0_0:
	.quad	0x4000000000000000              # double 2
	.text
	.globl	bilinear_init
	.p2align	4, 0x90
bilinear_init:                          # @bilinear_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	(%rax), %eax
	subl	$1, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	4(%rcx), %eax
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -8(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-8(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -4(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	cvtsi2ssl	-4(%rbp), %xmm0
	subss	-16(%rbp), %xmm0
	cvttss2si	%xmm0, %edi
	callq	fabs@PLT
	movl	%eax, %ecx
	movl	$1, %eax
	subl	%ecx, %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	cvtsi2ssl	-8(%rbp), %xmm0
	subss	-16(%rbp), %xmm0
	cvttss2si	%xmm0, %edi
	callq	fabs@PLT
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	%eax, %esi
	movl	-44(%rbp), %eax                 # 4-byte Reload
	movl	$1, %edx
	subl	%esi, %edx
	imull	%edx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -20(%rbp)
	movl	-12(%rbp), %eax
	cltd
	idivl	8(%rcx)
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	%edx, -24(%rbp)
	movl	-12(%rbp), %ecx
	imull	(%rax), %ecx
	imull	(%rax), %ecx
	imull	8(%rax), %ecx
	movl	-24(%rbp), %edx
	imull	(%rax), %edx
	imull	(%rax), %edx
	addl	%edx, %ecx
	movl	-8(%rbp), %edx
	imull	(%rax), %edx
	addl	%edx, %ecx
	addl	-4(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	16(%rax), %rax
	movslq	-28(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fabs