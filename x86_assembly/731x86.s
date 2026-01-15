	.text
	.globl	dict_put                        # -- Begin function dict_put
	.p2align	4, 0x90
dict_put:                               # @dict_put
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	map_put@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movq	-16(%rbp), %rsi
	callq	vec_push@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym map_put
	.addrsig_sym vec_push