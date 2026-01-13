	.text
	.type	dtoa_ctx_key,@object            // @dtoa_ctx_key
	.bss
	.globl	dtoa_ctx_key
	.p2align	2
dtoa_ctx_key:
	.word	0                               // 0x0
	.size	dtoa_ctx_key, 4
	.type	dtoa_ctx_once,@object           // @dtoa_ctx_once
	.globl	dtoa_ctx_once
	.p2align	2
dtoa_ctx_once:
	.word	0                               // 0x0
	.size	dtoa_ctx_once, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	tsd_dtoa_ctx_init,@object       // @tsd_dtoa_ctx_init
	.globl	tsd_dtoa_ctx_init
	.p2align	2
tsd_dtoa_ctx_init:
	.word	0                               // 0x0
	.size	tsd_dtoa_ctx_init, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig