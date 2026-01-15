	.text
	.globl	grayscale_image_3c              # -- Begin function grayscale_image_3c
	.p2align	4, 0x90
grayscale_image_3c:                     # @grayscale_image_3c
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	cmpl	$3, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	.L__const.grayscale_image_3c.scale(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	.L__const.grayscale_image_3c.scale+8(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -8(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-8(%rbp), %eax
	cmpl	4(%rcx), %eax
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -4(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	xorps	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movl	$0, -12(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -12(%rbp)
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movslq	-12(%rbp), %rcx
	movss	-24(%rbp,%rcx,4), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)                # 4-byte Spill
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	get_pixel@PLT
	movaps	%xmm0, %xmm2
	movss	-44(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	16(%rdx), %rax
	imull	$0, 4(%rdx), %ecx
	imull	8(%rdx), %ecx
	movl	8(%rdx), %esi
	imull	-8(%rbp), %esi
	addl	%esi, %ecx
	addl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	16(%rdx), %rax
	movl	4(%rdx), %ecx
	shll	$0, %ecx
	imull	8(%rdx), %ecx
	movl	8(%rdx), %esi
	imull	-8(%rbp), %esi
	addl	%esi, %ecx
	addl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	16(%rdx), %rax
	movl	4(%rdx), %ecx
	shll	$1, %ecx
	imull	8(%rdx), %ecx
	movl	8(%rdx), %edx
	imull	-8(%rbp), %edx
	addl	%edx, %ecx
	addl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.grayscale_image_3c.scale:
	.long	0x3e991687                      # float 0.298999995
	.long	0x3f1645a2                      # float 0.587000012
	.long	0x3de978d5                      # float 0.114
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym get_pixel