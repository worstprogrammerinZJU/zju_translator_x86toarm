	.text
	.p2align	4, 0x90                         # -- Begin function buf_set
buf_set:                                # @buf_set
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_6
# %bb.1:
	movl	$0, -24(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	4(%rcx), %eax
	cltq
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-24(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_2
.LBB0_5:
	jmp	.LBB0_11
.LBB0_6:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -24(%rbp)
	jl	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rsi
	imull	(%rsi), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rcx
	imull	4(%rcx), %eax
	cltq
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-24(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_7
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym buf_set