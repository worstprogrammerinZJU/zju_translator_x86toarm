	.text
	.p2align	4, 0x90                         # -- Begin function tsd_dtoa_ctx_fini
tsd_dtoa_ctx_fini:                      # @tsd_dtoa_ctx_fini
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	dtoa_ctx_key(%rip), %edi
	callq	pthread_getspecific@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	tsd_dtoa_ctx_dtor@PLT
	movl	dtoa_ctx_key(%rip), %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	pthread_setspecific@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	dtoa_ctx_key
	.p2align	2
dtoa_ctx_key:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tsd_dtoa_ctx_fini
	.addrsig_sym pthread_getspecific
	.addrsig_sym tsd_dtoa_ctx_dtor
	.addrsig_sym pthread_setspecific
	.addrsig_sym dtoa_ctx_key