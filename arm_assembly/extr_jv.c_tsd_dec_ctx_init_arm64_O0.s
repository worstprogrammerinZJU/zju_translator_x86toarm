	.text
	.p2align	2                               // -- Begin function tsd_dec_ctx_init
	.type	tsd_dec_ctx_init,@function
tsd_dec_ctx_init:                       // @tsd_dec_ctx_init
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, jv_mem_free
	ldr	w1, [x8, :lo12:jv_mem_free]
	adrp	x0, dec_ctx_key
	add	x0, x0, :lo12:dec_ctx_key
	bl	pthread_key_create
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	bl	abort
	b	.LBB0_2
.LBB0_2:
	adrp	x8, jv_mem_free
	ldr	w1, [x8, :lo12:jv_mem_free]
	adrp	x0, dec_ctx_dbl_key
	add	x0, x0, :lo12:dec_ctx_dbl_key
	bl	pthread_key_create
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	bl	abort
	b	.LBB0_4
.LBB0_4:
	adrp	x8, tsd_dec_ctx_fini
	ldr	w0, [x8, :lo12:tsd_dec_ctx_fini]
	bl	atexit
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	tsd_dec_ctx_init, .Lfunc_end0-tsd_dec_ctx_init
                                        // -- End function
	.type	dec_ctx_key,@object             // @dec_ctx_key
	.bss
	.globl	dec_ctx_key
	.p2align	2
dec_ctx_key:
	.word	0                               // 0x0
	.size	dec_ctx_key, 4
	.type	jv_mem_free,@object             // @jv_mem_free
	.globl	jv_mem_free
	.p2align	2
jv_mem_free:
	.word	0                               // 0x0
	.size	jv_mem_free, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"error: cannot create thread specific key"
	.size	.L.str, 41
	.type	dec_ctx_dbl_key,@object         // @dec_ctx_dbl_key
	.bss
	.globl	dec_ctx_dbl_key
	.p2align	2
dec_ctx_dbl_key:
	.word	0                               // 0x0
	.size	dec_ctx_dbl_key, 4
	.type	tsd_dec_ctx_fini,@object        // @tsd_dec_ctx_fini
	.globl	tsd_dec_ctx_fini
	.p2align	2
tsd_dec_ctx_fini:
	.word	0                               // 0x0
	.size	tsd_dec_ctx_fini, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tsd_dec_ctx_init
	.addrsig_sym pthread_key_create
	.addrsig_sym fprintf
	.addrsig_sym abort
	.addrsig_sym atexit
	.addrsig_sym dec_ctx_key
	.addrsig_sym jv_mem_free
	.addrsig_sym stderr
	.addrsig_sym dec_ctx_dbl_key
	.addrsig_sym tsd_dec_ctx_fini