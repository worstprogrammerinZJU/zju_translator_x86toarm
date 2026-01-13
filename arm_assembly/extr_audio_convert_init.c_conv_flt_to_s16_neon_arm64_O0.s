	.text
	.p2align	2                               // -- Begin function conv_flt_to_s16_neon
	.type	conv_flt_to_s16_neon,@function
conv_flt_to_s16_neon:                   // @conv_flt_to_s16_neon
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	ldr	x8, [sp, #16]
	ldr	x1, [x8]
	ldr	w2, [sp, #12]
	bl	swri_oldapi_conv_flt_to_s16_neon
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	conv_flt_to_s16_neon, .Lfunc_end0-conv_flt_to_s16_neon
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conv_flt_to_s16_neon
	.addrsig_sym swri_oldapi_conv_flt_to_s16_neon