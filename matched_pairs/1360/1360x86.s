	.text
	.bss
	.globl	dtoa_ctx_key
	.p2align	2
dtoa_ctx_key:
	.long	0                               # 0x0
	.globl	dtoa_ctx_once
	.p2align	2
dtoa_ctx_once:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.globl	tsd_dtoa_ctx_init
	.p2align	2
tsd_dtoa_ctx_init:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig