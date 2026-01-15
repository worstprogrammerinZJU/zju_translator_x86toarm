	.text
	.globl	swr_convert                     # -- Begin function swr_convert
	.p2align	4, 0x90
swr_convert:                            # @swr_convert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %r8
	movl	-44(%rbp), %r9d
	leaq	swr_convert(%rip), %rdi
	callq	testneonclobbers@PLT
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym swr_convert
	.addrsig_sym testneonclobbers