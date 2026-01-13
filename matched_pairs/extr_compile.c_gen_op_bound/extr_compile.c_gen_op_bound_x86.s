	.text
	.globl	gen_op_bound                    # -- Begin function gen_op_bound
	.p2align	4, 0x90
gen_op_bound:                           # @gen_op_bound
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rsi, -16(%rbp)
	movl	%edi, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	block_is_single@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rax
	movl	16(%rax), %esi
	callq	gen_op_unbound@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym block_is_single
	.addrsig_sym gen_op_unbound