	.text
	.p2align	2                               // -- Begin function tsd_dtoa_ctx_fini
	.type	tsd_dtoa_ctx_fini,@function
tsd_dtoa_ctx_fini:                      // @tsd_dtoa_ctx_fini
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, dtoa_ctx_key
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:dtoa_ctx_key]
	bl	pthread_getspecific
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	tsd_dtoa_ctx_dtor
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:dtoa_ctx_key]
	mov	x1, xzr
	bl	pthread_setspecific
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	tsd_dtoa_ctx_fini, .Lfunc_end0-tsd_dtoa_ctx_fini
                                        // -- End function
	.type	dtoa_ctx_key,@object            // @dtoa_ctx_key
	.bss
	.globl	dtoa_ctx_key
	.p2align	2
dtoa_ctx_key:
	.word	0                               // 0x0
	.size	dtoa_ctx_key, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tsd_dtoa_ctx_fini
	.addrsig_sym pthread_getspecific
	.addrsig_sym tsd_dtoa_ctx_dtor
	.addrsig_sym pthread_setspecific
	.addrsig_sym dtoa_ctx_key