	.text
	.p2align	4, 0x90                         # -- Begin function tsd_dtoa_ctx_dtor
tsd_dtoa_ctx_dtor:                      # @tsd_dtoa_ctx_dtor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	jvp_dtoa_context_free@PLT
	movq	-8(%rbp), %rdi
	callq	jv_mem_free@PLT
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tsd_dtoa_ctx_dtor
	.addrsig_sym jvp_dtoa_context_free
	.addrsig_sym jv_mem_free