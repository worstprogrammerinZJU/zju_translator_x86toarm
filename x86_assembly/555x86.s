	.text
	.globl	randomize_data                  # -- Begin function randomize_data
	.p2align	4, 0x90
randomize_data:                         # @randomize_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	8(%rax), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jle	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	rand@PLT
	cltd
	idivl	-4(%rbp)
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	%edx, -8(%rbp)
	movq	16(%rax), %rcx
	movslq	-8(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	%rcx, -16(%rbp)
	movq	16(%rax), %rcx
	movslq	-4(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movq	16(%rax), %rcx
	movslq	-8(%rbp), %rdx
	movq	%rsi, (%rcx,%rdx,8)
	movq	-16(%rbp), %rsi
	movq	16(%rax), %rcx
	movslq	-4(%rbp), %rdx
	movq	%rsi, (%rcx,%rdx,8)
	movq	(%rax), %rcx
	movslq	-8(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rcx
	movslq	-4(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movq	(%rax), %rcx
	movslq	-8(%rbp), %rdx
	movq	%rsi, (%rcx,%rdx,8)
	movq	-16(%rbp), %rdx
	movq	(%rax), %rax
	movslq	-4(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand