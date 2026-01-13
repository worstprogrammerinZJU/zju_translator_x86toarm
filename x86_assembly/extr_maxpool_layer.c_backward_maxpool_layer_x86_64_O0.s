	.text
	.globl	backward_maxpool_layer          # -- Begin function backward_maxpool_layer
	.p2align	4, 0x90
backward_maxpool_layer:                 # @backward_maxpool_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	movl	(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movl	4(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -24(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	imull	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	imull	12(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rcx
	movslq	-12(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	movl	%ecx, -28(%rbp)
	movq	24(%rax), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movslq	(%rax,%rcx,4), %rdx
	addq	%rsi, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig