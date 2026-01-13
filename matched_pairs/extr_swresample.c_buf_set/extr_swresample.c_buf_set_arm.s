	.text
	.p2align	2                               // -- Begin function buf_set
	.type	buf_set,@function
buf_set:                                // @buf_set
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #8]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #24]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #8]
	ldr	x8, [x8, x9, lsl #3]
	ldr	w9, [sp, #12]
	ldr	x10, [sp, #24]
	ldr	w10, [x10, #4]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #8]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_2
.LBB0_5:
	b	.LBB0_11
.LBB0_6:
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	subs	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	tbnz	w8, #31, .LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #12]
	ldr	x11, [sp, #24]
	ldr	w11, [x11]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	x10, [sp, #24]
	ldr	w10, [x10, #4]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #8]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_7
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	buf_set, .Lfunc_end0-buf_set
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym buf_set