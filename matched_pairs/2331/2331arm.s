	.text
	.p2align	2                               // -- Begin function stbiw__zlib_countm
	.type	stbiw__zlib_countm,@function
stbiw__zlib_countm:                     // @stbiw__zlib_countm
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #12]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #258
	cset	w8, lt
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #8]
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #8]
	ldrb	w9, [x9, x10]
	subs	w8, w8, w9
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_8
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_8:
	ldr	w0, [sp, #8]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbiw__zlib_countm, .Lfunc_end0-stbiw__zlib_countm
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__zlib_countm