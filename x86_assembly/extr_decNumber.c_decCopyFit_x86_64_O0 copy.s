	.text
	.p2align	4, 0x90                         # -- Begin function decCopyFit
decCopyFit:                             # @decCopyFit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	callq	decSetCoeff@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decCopyFit
	.addrsig_sym decSetCoeff