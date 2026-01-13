	.text
	.p2align	2                               // -- Begin function conv_fltp_to_s16_nch_neon
	.type	conv_fltp_to_s16_nch_neon,@function
conv_fltp_to_s16_nch_neon:              // @conv_fltp_to_s16_nch_neon
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	mov	w8, #3
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w9, [sp, #8]
	adrp	x8, SWR_CH_MAX
	ldr	w10, [x8, :lo12:SWR_CH_MAX]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #8]
	ldr	x8, [x8, x9, lsl #3]
	subs	x8, x8, #0
	cset	w8, ne
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_6:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	ldr	x1, [sp, #16]
	ldr	w2, [sp, #12]
	ldr	w3, [sp, #8]
	bl	swri_oldapi_conv_fltp_to_s16_nch_neon
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	conv_fltp_to_s16_nch_neon, .Lfunc_end0-conv_fltp_to_s16_nch_neon
                                        // -- End function
	.type	SWR_CH_MAX,@object              // @SWR_CH_MAX
	.bss
	.globl	SWR_CH_MAX
	.p2align	2
SWR_CH_MAX:
	.word	0                               // 0x0
	.size	SWR_CH_MAX, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conv_fltp_to_s16_nch_neon
	.addrsig_sym swri_oldapi_conv_fltp_to_s16_nch_neon
	.addrsig_sym SWR_CH_MAX