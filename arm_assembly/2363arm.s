	.text
	.p2align	2                               // -- Begin function set_audiodata_fmt
	.type	set_audiodata_fmt,@function
set_audiodata_fmt:                      // @set_audiodata_fmt
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	w0, [sp, #4]
	bl	av_get_bytes_per_sample
	ldr	x8, [sp, #8]
	str	w0, [x8, #12]
	ldr	w0, [sp, #4]
	bl	av_sample_fmt_is_planar
	ldr	x8, [sp, #8]
	str	w0, [x8, #4]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	subs	w8, w8, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x9, [sp, #8]
	mov	w8, #1
	str	w8, [x9, #4]
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	set_audiodata_fmt, .Lfunc_end0-set_audiodata_fmt
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_audiodata_fmt
	.addrsig_sym av_get_bytes_per_sample
	.addrsig_sym av_sample_fmt_is_planar