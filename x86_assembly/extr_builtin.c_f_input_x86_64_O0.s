	.text
	.p2align	4, 0x90                         # -- Begin function f_input
f_input:                                # @f_input
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movq	-16(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	callq	jq_get_input_cb@PLT
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	*%rax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	jne	.LBB0_4
# %bb.3:
	movl	-44(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_invalid_has_msg@PLT
	cmpq	$0, %rax
	je	.LBB0_5
.LBB0_4:
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"break"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_input
	.addrsig_sym jv_free
	.addrsig_sym jq_get_input_cb
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_invalid_has_msg
	.addrsig_sym jv_copy