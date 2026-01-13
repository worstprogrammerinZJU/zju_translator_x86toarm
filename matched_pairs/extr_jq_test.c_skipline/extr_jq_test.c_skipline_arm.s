	.text
	.p2align	2                               // -- Begin function skipline
	.type	skipline,@function
skipline:                               // @skipline
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldrb	w9, [x8, x9]
	mov	w8, #1
	subs	w9, w9, #32
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #9
	cset	w8, eq
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_5:
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #35
	b.eq	.LBB0_8
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #10
	b.eq	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldrb	w8, [x8, x9]
	cbnz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	mov	w8, #1
	str	w8, [sp, #28]
	b	.LBB0_10
.LBB0_9:
	str	wzr, [sp, #28]
	b	.LBB0_10
.LBB0_10:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	skipline, .Lfunc_end0-skipline
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skipline