	.text
	.p2align	2                               // -- Begin function tsd_dtoa_ctx_dtor
	.type	tsd_dtoa_ctx_dtor,@function
tsd_dtoa_ctx_dtor:                      // @tsd_dtoa_ctx_dtor
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	jvp_dtoa_context_free
	ldr	x0, [sp, #8]
	bl	jv_mem_free
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	tsd_dtoa_ctx_dtor, .Lfunc_end0-tsd_dtoa_ctx_dtor
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tsd_dtoa_ctx_dtor
	.addrsig_sym jvp_dtoa_context_free
	.addrsig_sym jv_mem_free