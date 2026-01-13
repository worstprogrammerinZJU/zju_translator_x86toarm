	.text
	.globl	exclusive_image                 # -- Begin function exclusive_image
	.p2align	4, 0x90
exclusive_image:                        # @exclusive_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	16(%rbp), %rcx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	movl	(%rcx), %eax
	imull	4(%rcx), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -4(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_6 Depth 3
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	movl	8(%rcx), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_14
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -12(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_12
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movl	-4(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB0_6:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-8(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=3
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movl	-8(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rax,%rcx,8)
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=3
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_6
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_3
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_14:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig