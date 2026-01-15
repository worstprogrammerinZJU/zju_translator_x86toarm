	.text
	.p2align	4, 0x90                         # -- Begin function pow5mult
pow5mult:                               # @pow5mult
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %eax
	andl	$3, %eax
	movl	%eax, -60(%rbp)
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	leaq	pow5mult.p05(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	xorl	%ecx, %ecx
	callq	multadd@PLT
	movq	%rax, -24(%rbp)
.LBB0_2:
	movl	-28(%rbp), %eax
	sarl	$2, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rdi
	movl	$625, %esi                      # imm = 0x271
	callq	i2b@PLT
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	mult@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Bfree@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-28(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_11
# %bb.10:
	jmp	.LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	mult@PLT
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_7
.LBB0_14:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_15:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	2
pow5mult.p05:
	.long	5                               # 0x5
	.long	25                              # 0x19
	.long	125                             # 0x7d
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pow5mult
	.addrsig_sym multadd
	.addrsig_sym i2b
	.addrsig_sym mult
	.addrsig_sym Bfree
	.addrsig_sym pow5mult.p05