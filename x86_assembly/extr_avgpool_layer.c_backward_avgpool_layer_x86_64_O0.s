	.text
	.globl	backward_avgpool_layer          # -- Begin function backward_avgpool_layer
	.p2align	4, 0x90
backward_avgpool_layer:                 # @backward_avgpool_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -20(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-20(%rbp), %eax
	cmpl	4(%rcx), %eax
	jge	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movl	-20(%rbp), %eax
	movl	-12(%rbp), %ecx
	imull	4(%rdx), %ecx
	addl	%ecx, %eax
	movl	%eax, -24(%rbp)
	movl	$0, -16(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movl	-16(%rbp), %eax
	movl	8(%rdx), %ecx
	imull	12(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movl	-16(%rbp), %eax
	movl	8(%rdx), %ecx
	imull	12(%rdx), %ecx
	movl	-20(%rbp), %esi
	movl	-12(%rbp), %edi
	imull	4(%rdx), %edi
	addl	%edi, %esi
	imull	%esi, %ecx
	addl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movq	16(%rdx), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	8(%rdx), %ecx
	imull	12(%rdx), %ecx
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	addl	(%rax,%rcx,4), %edx
	movl	%edx, (%rax,%rcx,4)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
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