	.text
	.p2align	2                               // -- Begin function shift
	.type	shift,@function
shift:                                  // @shift
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	str	w3, [sp, #12]
	ldr	w0, [sp, #12]
	bl	av_sample_fmt_is_planar
	cbz	x0, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #12]
	mov	w1, wzr
	bl	av_get_alt_sample_fmt
	str	w0, [sp, #12]
	str	wzr, [sp, #8]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	b.ge	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-12]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	w0, [sp, #12]
	bl	av_get_bytes_per_sample
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	mul	w10, w8, w0
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #8]
	add	x9, x8, x9, lsl #3
	ldr	x8, [x9]
	add	x8, x8, w10, sxtw #2
	str	x8, [x9]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_2
.LBB0_5:
	b	.LBB0_7
.LBB0_6:
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #16]
	mul	w8, w8, w9
	str	w8, [sp]                        // 4-byte Folded Spill
	ldr	w0, [sp, #12]
	bl	av_get_bytes_per_sample
	ldr	w8, [sp]                        // 4-byte Folded Reload
	mul	w10, w8, w0
	ldur	x9, [x29, #-8]
	ldr	x8, [x9]
	add	x8, x8, w10, sxtw #2
	str	x8, [x9]
	b	.LBB0_7
.LBB0_7:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	shift, .Lfunc_end0-shift
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym shift
	.addrsig_sym av_sample_fmt_is_planar
	.addrsig_sym av_get_alt_sample_fmt
	.addrsig_sym av_get_bytes_per_sample