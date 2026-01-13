	.text
	.p2align	2                               // -- Begin function tsd_dec_ctx_fini
	.type	tsd_dec_ctx_fini,@function
tsd_dec_ctx_fini:                       // @tsd_dec_ctx_fini
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, dec_ctx_key
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:dec_ctx_key]
	bl	pthread_getspecific
	bl	jv_mem_free
	adrp	x8, dec_ctx_dbl_key
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:dec_ctx_dbl_key]
	bl	pthread_getspecific
	bl	jv_mem_free
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:dec_ctx_key]
	mov	x1, xzr
	stur	x1, [x29, #-8]                  // 8-byte Folded Spill
	bl	pthread_setspecific
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-8]                  // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:dec_ctx_dbl_key]
	bl	pthread_setspecific
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	tsd_dec_ctx_fini, .Lfunc_end0-tsd_dec_ctx_fini
                                        // -- End function
	.type	dec_ctx_key,@object             // @dec_ctx_key
	.bss
	.globl	dec_ctx_key
	.p2align	2
dec_ctx_key:
	.word	0                               // 0x0
	.size	dec_ctx_key, 4
	.type	dec_ctx_dbl_key,@object         // @dec_ctx_dbl_key
	.globl	dec_ctx_dbl_key
	.p2align	2
dec_ctx_dbl_key:
	.word	0                               // 0x0
	.size	dec_ctx_dbl_key, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tsd_dec_ctx_fini
	.addrsig_sym jv_mem_free
	.addrsig_sym pthread_getspecific
	.addrsig_sym pthread_setspecific
	.addrsig_sym dec_ctx_key
	.addrsig_sym dec_ctx_dbl_key