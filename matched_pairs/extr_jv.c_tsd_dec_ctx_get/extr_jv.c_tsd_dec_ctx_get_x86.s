	.text
	.p2align	4, 0x90                         # -- Begin function tsd_dec_ctx_get
tsd_dec_ctx_get:                        # @tsd_dec_ctx_get
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	tsd_dec_ctx_init(%rip), %esi
	leaq	dec_ctx_once(%rip), %rdi
	callq	pthread_once@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	pthread_getspecific@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_2:
	movl	$0, -56(%rbp)
	movl	DEC_MAX_EMAX(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	DEC_MIN_EMAX(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	DEC_ROUND_HALF_UP(%rip), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	leaq	dec_ctx_key(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jne	.LBB0_4
# %bb.3:
	movl	DEC_MAX_DIGITS(%rip), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_7
.LBB0_4:
	leaq	dec_ctx_dbl_key(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jne	.LBB0_6
# %bb.5:
	movl	BIN64_DEC_PRECISION(%rip), %eax
	movl	%eax, -56(%rbp)
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_11
# %bb.8:
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-48(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-32(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-24(%rbp), %rsi
	callq	pthread_setspecific@PLT
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.9:
	movl	stderr(%rip), %edi
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movb	$0, %al
	callq	abort@PLT
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_12:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	dec_ctx_once
	.p2align	2
dec_ctx_once:
	.long	0                               # 0x0
	.globl	tsd_dec_ctx_init
	.p2align	2
tsd_dec_ctx_init:
	.long	0                               # 0x0
	.globl	DEC_MAX_EMAX
	.p2align	2
DEC_MAX_EMAX:
	.long	0                               # 0x0
	.globl	DEC_MIN_EMAX
	.p2align	2
DEC_MIN_EMAX:
	.long	0                               # 0x0
	.globl	DEC_ROUND_HALF_UP
	.p2align	2
DEC_ROUND_HALF_UP:
	.long	0                               # 0x0
	.globl	dec_ctx_key
	.p2align	2
dec_ctx_key:
	.long	0                               # 0x0
	.globl	DEC_MAX_DIGITS
	.p2align	2
DEC_MAX_DIGITS:
	.long	0                               # 0x0
	.globl	dec_ctx_dbl_key
	.p2align	2
dec_ctx_dbl_key:
	.long	0                               # 0x0
	.globl	BIN64_DEC_PRECISION
	.p2align	2
BIN64_DEC_PRECISION:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"error: cannot store thread specific data"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tsd_dec_ctx_get
	.addrsig_sym pthread_once
	.addrsig_sym pthread_getspecific
	.addrsig_sym malloc
	.addrsig_sym pthread_setspecific
	.addrsig_sym fprintf
	.addrsig_sym abort
	.addrsig_sym dec_ctx_once
	.addrsig_sym tsd_dec_ctx_init
	.addrsig_sym DEC_MAX_EMAX
	.addrsig_sym DEC_MIN_EMAX
	.addrsig_sym DEC_ROUND_HALF_UP
	.addrsig_sym dec_ctx_key
	.addrsig_sym DEC_MAX_DIGITS
	.addrsig_sym dec_ctx_dbl_key
	.addrsig_sym BIN64_DEC_PRECISION
	.addrsig_sym stderr