	.text
	.globl	block_const_kind                # -- Begin function block_const_kind
	.p2align	4, 0x90
block_const_kind:                       # @block_const_kind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	block_is_const@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_get_kind@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym block_is_const
	.addrsig_sym jv_get_kind