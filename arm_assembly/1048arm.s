	.text
	.p2align	2                               // -- Begin function split
	.type	split,@function
split:                                  // @split
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-16]
	mov	w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_9
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	subs	w8, w8, #13
	b.ne	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #1]
	subs	w8, w8, #10
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	ldur	x8, [x29, #-16]
	add	x8, x8, #2
	stur	x8, [x29, #-16]
	b	.LBB0_1
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	subs	w8, w8, #13
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	subs	w8, w8, #10
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	add	x8, x8, #1
	stur	x8, [x29, #-16]
	b	.LBB0_1
.LBB0_9:
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	mov	x8, #8
	mul	x8, x8, x9
	add	x8, x8, #1
	mov	w0, w8
	bl	malloc
	str	x0, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_10
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_18
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	subs	w8, w8, #13
	b.ne	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #1]
	subs	w8, w8, #10
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	strb	wzr, [x8]
	ldur	x8, [x29, #-16]
	add	x8, x8, #2
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #12]
	mov	w11, w10
	add	w11, w11, #1
	str	w11, [sp, #12]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_10
.LBB0_14:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	subs	w8, w8, #13
	b.eq	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	subs	w8, w8, #10
	b.ne	.LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	strb	wzr, [x8]
	ldur	x8, [x29, #-16]
	add	x8, x8, #1
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #12]
	mov	w11, w10
	add	w11, w11, #1
	str	w11, [sp, #12]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	add	x8, x8, #1
	stur	x8, [x29, #-16]
	b	.LBB0_10
.LBB0_18:
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #12]
	mov	x8, xzr
	str	x8, [x9, x10, lsl #3]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	split, .Lfunc_end0-split
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym split
	.addrsig_sym malloc