	.text
	.globl	grayscale_image                 # -- Begin function grayscale_image
	.p2align	4, 0x90
grayscale_image:                        # @grayscale_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	cmpl	$3, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
                                        # kill: def $ecx killed $eax
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	4(%rax), %esi
	movl	8(%rax), %edx
	movl	$1, %ecx
	callq	make_image@PLT
	movq	.L__const.grayscale_image.scale(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	.L__const.grayscale_image.scale+8(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -8(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movl	-8(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -4(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	cmpl	4(%rcx), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movslq	-12(%rbp), %rcx
	movss	-24(%rbp,%rcx,4), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)                # 4-byte Spill
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
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	-32(%rbp), %rdx                 # 8-byte Reload
	movaps	%xmm0, %xmm2
	movss	-52(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	16(%rax), %rax
	movl	-4(%rbp), %ecx
	movl	4(%rdx), %edx
	imull	-8(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
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
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.grayscale_image.scale:
	.long	0x3e991687                      # float 0.298999995
	.long	0x3f1645a2                      # float 0.587000012
	.long	0x3de978d5                      # float 0.114
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym make_image
	.addrsig_sym get_pixel