	.text
	.p2align	4, 0x90                         # -- Begin function tsd_dtoa_ctx_init
tsd_dtoa_ctx_init:                      # @tsd_dtoa_ctx_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	tsd_dtoa_ctx_dtor(%rip), %esi
	leaq	dtoa_ctx_key(%rip), %rdi
	callq	pthread_key_create@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	stderr(%rip), %edi
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movb	$0, %al
	callq	abort@PLT
.LBB0_2:
	movl	tsd_dtoa_ctx_fini(%rip), %edi
	callq	atexit@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	dtoa_ctx_key
	.p2align	2
dtoa_ctx_key:
	.long	0                               # 0x0
	.globl	tsd_dtoa_ctx_dtor
	.p2align	2
tsd_dtoa_ctx_dtor:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"error: cannot create thread specific key"
	.bss
	.globl	tsd_dtoa_ctx_fini
	.p2align	2
tsd_dtoa_ctx_fini:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tsd_dtoa_ctx_init
	.addrsig_sym pthread_key_create
	.addrsig_sym fprintf
	.addrsig_sym abort
	.addrsig_sym atexit
	.addrsig_sym dtoa_ctx_key
	.addrsig_sym tsd_dtoa_ctx_dtor
	.addrsig_sym stderr
	.addrsig_sym tsd_dtoa_ctx_fini