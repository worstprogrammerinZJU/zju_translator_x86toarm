	.text
	.p2align	2                               // -- Begin function stbiw__zlib_flushf
	.type	stbiw__zlib_flushf,@function
stbiw__zlib_flushf:                     // @stbiw__zlib_flushf
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #8
	b.lt	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	STBIW_UCHAR
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	stbiw__sbpush
	ldr	x9, [sp, #16]
	ldr	w8, [x9]
	lsr	w8, w8, #8
	str	w8, [x9]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	subs	w8, w8, #8
	str	w8, [x9]
	b	.LBB0_1
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbiw__zlib_flushf, .Lfunc_end0-stbiw__zlib_flushf
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__zlib_flushf
	.addrsig_sym stbiw__sbpush
	.addrsig_sym STBIW_UCHAR