	.text
	.globl	flip_image                      # -- Begin function flip_image
	.p2align	4, 0x90
flip_image:                             # @flip_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -4(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	cmpl	4(%rcx), %eax
	jge	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -8(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	-8(%rbp), %ecx
	movl	%ecx, -36(%rbp)                 # 4-byte Spill
	movl	8(%rax), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-36(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	-8(%rbp), %ecx
	movl	8(%rax), %edx
	movl	-4(%rbp), %esi
	movl	4(%rax), %edi
	imull	-12(%rbp), %edi
	addl	%edi, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%ecx, -16(%rbp)
	movl	8(%rax), %ecx
	subl	-8(%rbp), %ecx
	subl	$1, %ecx
	movl	8(%rax), %edx
	movl	-4(%rbp), %esi
	movl	4(%rax), %edi
	imull	-12(%rbp), %edi
	addl	%edi, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%ecx, -20(%rbp)
	movq	16(%rax), %rcx
	movslq	-20(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -24(%rbp)
	movq	16(%rax), %rcx
	movslq	-16(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	16(%rax), %rcx
	movslq	-20(%rbp), %rdx
	movss	%xmm0, (%rcx,%rdx,4)
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	16(%rax), %rax
	movslq	-16(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig