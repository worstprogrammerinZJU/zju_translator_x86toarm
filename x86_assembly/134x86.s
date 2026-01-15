	.text
	.p2align	4, 0x90                         # -- Begin function f_current_filename
f_current_filename:                     # @f_current_filename
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movq	-16(%rbp), %rdi
	callq	jq_util_input_get_current_filename@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_null@PLT
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_current_filename
	.addrsig_sym jv_free
	.addrsig_sym jq_util_input_get_current_filename
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_null