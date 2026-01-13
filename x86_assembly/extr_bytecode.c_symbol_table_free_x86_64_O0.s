	.text
	.p2align	4, 0x90                         # -- Begin function symbol_table_free
symbol_table_free:                      # @symbol_table_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	jv_mem_free@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_free@PLT
	movq	-8(%rbp), %rdi
	callq	jv_mem_free@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym symbol_table_free
	.addrsig_sym jv_mem_free
	.addrsig_sym jv_free