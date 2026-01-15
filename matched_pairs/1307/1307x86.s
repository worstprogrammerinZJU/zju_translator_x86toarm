	.text
	.p2align	4, 0x90                         # -- Begin function jvp_string_free
jvp_string_free:                        # @jvp_string_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	jvp_string_ptr@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	jvp_refcnt_dec@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	jv_mem_free@PLT
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_free
	.addrsig_sym jvp_string_ptr
	.addrsig_sym jvp_refcnt_dec
	.addrsig_sym jv_mem_free