	.text
	.p2align	2                               // -- Begin function isoption
	.type	isoption,@function
isoption:                               // @isoption
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	sturb	w1, [x29, #-17]
	str	x2, [sp, #16]
	str	x3, [sp, #8]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	subs	w8, w8, #45
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #1]
	subs	w8, w8, #45
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	str	xzr, [x8]
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	subs	w8, w8, #45
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	stur	wzr, [x29, #-4]
	b	.LBB0_16
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #1]
	subs	w8, w8, #45
	b.ne	.LBB0_8
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-16]
	add	x0, x8, #2
	ldr	x1, [sp, #16]
	bl	strcmp
	cbnz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #1]
	subs	w8, w8, #45
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	stur	wzr, [x29, #-4]
	b	.LBB0_16
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	ldurb	w8, [x29, #-17]
	cbnz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	stur	wzr, [x29, #-4]
	b	.LBB0_16
.LBB0_13:
	ldur	x0, [x29, #-16]
	ldurb	w1, [x29, #-17]
	bl	strchr
	cbz	x0, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	add	x8, x8, #1
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_15:
	stur	wzr, [x29, #-4]
	b	.LBB0_16
.LBB0_16:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	isoption, .Lfunc_end0-isoption
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym isoption
	.addrsig_sym strcmp
	.addrsig_sym strchr