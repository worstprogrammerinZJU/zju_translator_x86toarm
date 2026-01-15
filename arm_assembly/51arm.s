	.text
	.p2align	2                               // -- Begin function conv_fltp_to_s16_2ch_neon
	.type	conv_fltp_to_s16_2ch_neon,@function
conv_fltp_to_s16_2ch_neon:              // @conv_fltp_to_s16_2ch_neon
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	ldr	x1, [sp, #16]
	ldr	w2, [sp, #12]
	mov	w3, #2
	bl	swri_oldapi_conv_fltp_to_s16_2ch_neon
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	conv_fltp_to_s16_2ch_neon, .Lfunc_end0-conv_fltp_to_s16_2ch_neon
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conv_fltp_to_s16_2ch_neon
	.addrsig_sym swri_oldapi_conv_fltp_to_s16_2ch_neon