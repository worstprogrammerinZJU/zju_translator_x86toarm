	.text
	.p2align	4, 0x90                         # -- Begin function parser_free
parser_free:                            # @parser_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	parser_reset@PLT
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	callq	jv_free@PLT
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	jv_free@PLT
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	jv_mem_free@PLT
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	callq	jv_mem_free@PLT
	movq	-8(%rbp), %rdi
	callq	jvp_dtoa_context_free@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parser_free
	.addrsig_sym parser_reset
	.addrsig_sym jv_free
	.addrsig_sym jv_mem_free
	.addrsig_sym jvp_dtoa_context_free