	.text
	.globl	crop_image                      # -- Begin function crop_image
	.p2align	4, 0x90
crop_image:                             # @crop_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -64(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movl	%r8d, -16(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	(%rax), %ecx
	callq	make_image@PLT
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movl	-28(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -24(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -20(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	-24(%rbp), %ecx
	addl	-8(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movl	-20(%rbp), %ecx
	addl	-4(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movl	-32(%rbp), %edi
	movq	16(%rax), %rdx
	subq	$1, %rdx
	xorl	%esi, %esi
	callq	constrain_int@PLT
	movl	%eax, %ecx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, -32(%rbp)
	movl	-36(%rbp), %edi
	movq	8(%rax), %rdx
	subq	$1, %rdx
	xorl	%esi, %esi
	callq	constrain_int@PLT
	movl	%eax, %ecx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	get_pixel@PLT
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movss	%xmm0, -40(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movss	-40(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	set_pixel@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym constrain_int
	.addrsig_sym get_pixel
	.addrsig_sym set_pixel