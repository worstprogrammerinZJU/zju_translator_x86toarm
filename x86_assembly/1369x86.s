	.text
	.globl	jv_parser_free                  # -- Begin function jv_parser_free
	.p2align	4, 0x90
jv_parser_free:                         # @jv_parser_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	parser_free@PLT
	movq	-8(%rbp), %rdi
	callq	jv_mem_free@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parser_free
	.addrsig_sym jv_mem_free