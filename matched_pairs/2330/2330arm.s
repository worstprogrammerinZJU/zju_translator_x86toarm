	.text
	.p2align	2                               // -- Begin function stbiw__zlib_bitrev
	.type	stbiw__zlib_bitrev,@function
stbiw__zlib_bitrev:                     // @stbiw__zlib_bitrev
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w9, w8, #1
	str	w9, [sp, #8]
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #12]
	bfi	w8, w9, #1, #31
	str	w8, [sp, #4]
	ldr	w8, [sp, #12]
	asr	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_3:
	ldr	w0, [sp, #4]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbiw__zlib_bitrev, .Lfunc_end0-stbiw__zlib_bitrev
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__zlib_bitrev