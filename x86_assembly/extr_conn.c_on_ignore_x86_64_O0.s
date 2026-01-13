	.text
	.p2align	4, 0x90                         # -- Begin function on_ignore
on_ignore:                              # @on_ignore
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	UNUSED_PARAMETER@PLT
	movq	-24(%rbp), %rdi
	callq	UNUSED_PARAMETER@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	tube_dref@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym on_ignore
	.addrsig_sym UNUSED_PARAMETER
	.addrsig_sym tube_dref