	.text
	.globl	option_insert                   # -- Begin function option_insert
	.p2align	4, 0x90
option_insert:                          # @option_insert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$24, %edi
	callq	malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	list_insert@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym list_insert