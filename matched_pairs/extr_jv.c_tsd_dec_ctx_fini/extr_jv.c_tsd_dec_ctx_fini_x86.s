	.text
	.p2align	4, 0x90                         # -- Begin function tsd_dec_ctx_fini
tsd_dec_ctx_fini:                       # @tsd_dec_ctx_fini
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	dec_ctx_key(%rip), %edi
	callq	pthread_getspecific@PLT
	movl	%eax, %edi
	callq	jv_mem_free@PLT
	movl	dec_ctx_dbl_key(%rip), %edi
	callq	pthread_getspecific@PLT
	movl	%eax, %edi
	callq	jv_mem_free@PLT
	movl	dec_ctx_key(%rip), %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	pthread_setspecific@PLT
	movl	dec_ctx_dbl_key(%rip), %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	pthread_setspecific@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	dec_ctx_key
	.p2align	2
dec_ctx_key:
	.long	0                               # 0x0
	.globl	dec_ctx_dbl_key
	.p2align	2
dec_ctx_dbl_key:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tsd_dec_ctx_fini
	.addrsig_sym jv_mem_free
	.addrsig_sym pthread_getspecific
	.addrsig_sym pthread_setspecific
	.addrsig_sym dec_ctx_key
	.addrsig_sym dec_ctx_dbl_key