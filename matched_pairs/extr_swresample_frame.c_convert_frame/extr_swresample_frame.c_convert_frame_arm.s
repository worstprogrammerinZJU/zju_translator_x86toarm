	.text
	.p2align	2                               // -- Begin function convert_frame
	.type	convert_frame,@function
convert_frame:                          // @convert_frame
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #16]
	str	xzr, [sp, #8]
	str	wzr, [sp, #4]
	str	wzr, [sp]
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	str	w8, [sp, #4]
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #32]
	ldr	w8, [x8]
	str	w8, [sp]
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	ldr	w2, [sp, #4]
	ldr	x3, [sp, #8]
	ldr	w4, [sp]
	bl	swr_convert
	str	w0, [sp, #28]
	ldr	w8, [sp, #28]
	subs	w8, w8, #0
	b.ge	.LBB0_8
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-24]
	str	wzr, [x8]
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #28]
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_8:
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #28]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	b	.LBB0_10
.LBB0_10:
	stur	wzr, [x29, #-4]
	b	.LBB0_11
.LBB0_11:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	convert_frame, .Lfunc_end0-convert_frame
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym convert_frame
	.addrsig_sym swr_convert