	.text
	.globl	jv_parser_new                   # -- Begin function jv_parser_new
	.p2align	4, 0x90
jv_parser_new:                          # @jv_parser_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$4, %edi
	callq	jv_mem_alloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %esi
	callq	parser_init@PLT
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_alloc
	.addrsig_sym parser_init