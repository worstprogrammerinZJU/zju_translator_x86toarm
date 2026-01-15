	.text
	.globl	forward_avgpool_layer           # -- Begin function forward_avgpool_layer
	.p2align	4, 0x90
forward_avgpool_layer:                  # @forward_avgpool_layer
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
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	-20(%rbp), %ecx
	movl	-12(%rbp), %edx
	imull	4(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -24(%rbp)
	movq	8(%rax), %rax
	movslq	-24(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	movl	$0, -16(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movl	-16(%rbp), %eax
	movl	16(%rdx), %ecx
	imull	20(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	-16(%rbp), %ecx
	movl	16(%rax), %edx
	imull	20(%rax), %edx
	movl	-20(%rbp), %esi
	movl	-12(%rbp), %edi
	imull	4(%rax), %edi
	addl	%edi, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movq	8(%rax), %rax
	movslq	-24(%rbp), %rcx
	movslq	(%rax,%rcx,4), %rdx
	addq	%rsi, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, (%rax,%rcx,4)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	16(%rax), %esi
	imull	20(%rax), %esi
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cltd
	idivl	%esi
	movl	%eax, %edx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	%edx, (%rax,%rcx,4)
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=2
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