	.text
	.p2align	2                               // -- Begin function decBiStr
	.type	decBiStr,@function
decBiStr:                               // @decBiStr
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	str	x2, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	ldr	x9, [sp, #8]
	ldrb	w9, [x9]
	subs	w8, w8, w9
	b.eq	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	ldr	x9, [sp]
	ldrb	w9, [x9]
	subs	w8, w8, w9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	str	wzr, [sp, #28]
	b	.LBB0_9
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	cbnz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_8
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	ldr	x8, [sp]
	add	x8, x8, #1
	str	x8, [sp]
	b	.LBB0_1
.LBB0_8:
	mov	w8, #1
	str	w8, [sp, #28]
	b	.LBB0_9
.LBB0_9:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decBiStr, .Lfunc_end0-decBiStr
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decBiStr