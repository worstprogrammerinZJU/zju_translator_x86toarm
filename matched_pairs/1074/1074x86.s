	.text
	.globl	blocky_image                    # -- Begin function blocky_image
	.p2align	4, 0x90
blocky_image:                           # @blocky_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	%edi, -4(%rbp)
	movl	$0, -16(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-16(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -12(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	4(%rcx), %eax
	jge	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -8(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-8(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movq	-24(%rbp), %r8                  # 8-byte Reload
	movq	16(%r8), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	-8(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%eax, %ecx
	imull	-4(%rbp), %ecx
	movl	8(%r8), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	-36(%rbp), %edx                 # 4-byte Reload
	movl	%eax, %esi
	movq	-32(%rbp), %rax                 # 8-byte Reload
	imull	-4(%rbp), %esi
	movl	4(%r8), %edi
	imull	-16(%rbp), %edi
	addl	%edi, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	16(%r8), %rax
	movl	-8(%rbp), %ecx
	movl	8(%r8), %esi
	movl	-12(%rbp), %edi
	movl	4(%r8), %r8d
	imull	-16(%rbp), %r8d
	addl	%r8d, %edi
	imull	%edi, %esi
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig