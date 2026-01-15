	.text
	.globl	mask_to_rgb                     # -- Begin function mask_to_rgb
	.p2align	4, 0x90
mask_to_rgb:                            # @mask_to_rgb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	4(%rax), %esi
	movl	8(%rax), %edx
	movl	$3, %ecx
	callq	make_image@PLT
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	imull	$123457, -12(%rbp), %eax        # imm = 0x1E241
	cltd
	idivl	-4(%rbp)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %esi
	movl	-4(%rbp), %edx
	movl	$2, %edi
	callq	get_color@PLT
	movss	%xmm0, -20(%rbp)
	movl	-16(%rbp), %esi
	movl	-4(%rbp), %edx
	movl	$1, %edi
	callq	get_color@PLT
	movss	%xmm0, -24(%rbp)
	movl	-16(%rbp), %esi
	movl	-4(%rbp), %edx
	xorl	%edi, %edi
	callq	get_color@PLT
	movss	%xmm0, -28(%rbp)
	movl	$0, -8(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	movl	-8(%rbp), %eax
	movl	4(%rdx), %ecx
	imull	8(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rcx
	movl	-12(%rbp), %edx
	imull	8(%rsi), %edx
	imull	4(%rsi), %edx
	addl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	-20(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movq	16(%rsi), %rcx
	movl	-8(%rbp), %edx
	imull	$0, 4(%rsi), %edi
	imull	8(%rsi), %edi
	addl	%edi, %edx
	movslq	%edx, %rdx
	movss	(%rcx,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rcx,%rdx,4)
	movq	16(%rax), %rcx
	movl	-12(%rbp), %edx
	imull	8(%rsi), %edx
	imull	4(%rsi), %edx
	addl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	-24(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movq	16(%rsi), %rcx
	movl	-8(%rbp), %edx
	movl	4(%rsi), %edi
	shll	$0, %edi
	imull	8(%rsi), %edi
	addl	%edi, %edx
	movslq	%edx, %rdx
	movss	(%rcx,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rcx,%rdx,4)
	movq	16(%rax), %rax
	movl	-12(%rbp), %ecx
	imull	8(%rsi), %ecx
	imull	4(%rsi), %ecx
	addl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movq	16(%rsi), %rax
	movl	-8(%rbp), %ecx
	movl	4(%rsi), %edx
	shll	$1, %edx
	imull	8(%rsi), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym get_color