	.text
	.p2align	4, 0x90                         # -- Begin function f_type
f_type:                                 # @f_type
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_get_kind@PLT
	movl	%eax, %edi
	callq	jv_kind_name@PLT
	movl	%eax, %edi
	callq	jv_string@PLT
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_type
	.addrsig_sym jv_string
	.addrsig_sym jv_kind_name
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free