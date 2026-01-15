	.text
	.p2align	2                               // -- Begin function available_samples
	.type	available_samples,@function
available_samples:                      // @available_samples
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #12]
	bl	av_get_bytes_per_sample
	str	w0, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w8, [x8]
	ldr	w9, [sp, #12]
	sdiv	w8, w8, w9
	str	w8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #12]
	bl	av_sample_fmt_is_planar
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	bl	av_get_channel_layout_nb_channels
	str	w0, [sp, #4]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	sdiv	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	available_samples, .Lfunc_end0-available_samples
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym available_samples
	.addrsig_sym av_get_bytes_per_sample
	.addrsig_sym av_sample_fmt_is_planar
	.addrsig_sym av_get_channel_layout_nb_channels