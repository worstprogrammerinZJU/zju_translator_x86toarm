	.text
	.p2align	2                               // -- Begin function resample_flush
	.type	resample_flush,@function
resample_flush:                         // @resample_flush
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	add	x8, x8, #8
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	bl	FFMIN
	add	w8, w0, #1
	mov	w9, #2
	sdiv	w8, w8, w9
	str	w8, [sp]
	ldr	x0, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #4]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	add	w8, w8, w9
	ldr	w9, [sp]
	add	w1, w8, w9
	bl	swri_realloc_audio
	str	w0, [sp, #4]
	subs	w8, w0, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #16]
	bl	av_assert0
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_5 Depth 2
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	str	wzr, [sp, #8]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #8]
	ldr	w9, [sp]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=2
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #4]
	ldur	x10, [x29, #-16]
	ldr	w10, [x10]
	add	w9, w9, w10
	ldr	w10, [sp, #8]
	add	w9, w9, w10
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #4]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #4]
	ldur	x10, [x29, #-16]
	ldr	w10, [x10]
	add	w9, w9, w10
	ldr	w10, [sp, #8]
	subs	w9, w9, w10
	subs	w9, w9, #1
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #4]
	mul	w9, w9, w10
	add	x1, x8, w9, sxtw
	ldr	x8, [sp, #16]
	ldr	w2, [x8, #4]
	bl	memcpy
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=2
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_10:
	ldr	w10, [sp]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	stur	wzr, [x29, #-4]
	b	.LBB0_11
.LBB0_11:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	resample_flush, .Lfunc_end0-resample_flush
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resample_flush
	.addrsig_sym FFMIN
	.addrsig_sym swri_realloc_audio
	.addrsig_sym av_assert0
	.addrsig_sym memcpy