	.text
	.p2align	4, 0x90                         # -- Begin function needfree
needfree:                               # @needfree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	makenextfile@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	$0, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym needfree
	.addrsig_sym makenextfile