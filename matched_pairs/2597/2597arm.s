	.text
	.globl	strip                           // -- Begin function strip
	.p2align	2
	.type	strip,@function
strip:                                  // @strip
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	strlen
	str	x0, [sp, #24]
	str	xzr, [sp, #16]
	stur	xzr, [x29, #-16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.hs	.LBB0_9
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-16]
	add	x8, x8, x9
	ldrb	w8, [x8]
	strb	w8, [sp, #15]
	ldrb	w8, [sp, #15]
	subs	w8, w8, #32
	b.eq	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #15]
	subs	w8, w8, #9
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #15]
	subs	w8, w8, #10
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #15]
	ldur	x9, [x29, #-8]
	ldur	x10, [x29, #-16]
	ldr	x11, [sp, #16]
	subs	x10, x10, x11
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	add	x8, x8, #1
	stur	x8, [x29, #-16]
	b	.LBB0_1
.LBB0_9:
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #24]
	ldr	x10, [sp, #16]
	subs	x9, x9, x10
	add	x8, x8, x9
	strb	wzr, [x8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	strip, .Lfunc_end0-strip
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen