	.text
	.p2align	2                               // -- Begin function stbiw__paeth
	.type	stbiw__paeth,@function
stbiw__paeth:                           // @stbiw__paeth
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-12]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-8]
	subs	w0, w8, w9
	bl	abs
	str	w0, [sp, #8]
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-12]
	subs	w0, w8, w9
	bl	abs
	str	w0, [sp, #4]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #16]
	subs	w0, w8, w9
	bl	abs
	str	w0, [sp]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.gt	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]
	ldr	w9, [sp]
	subs	w8, w8, w9
	b.gt	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-8]
	bl	STBIW_UCHAR
	sturb	w0, [x29, #-1]
	b	.LBB0_6
.LBB0_3:
	ldr	w8, [sp, #4]
	ldr	w9, [sp]
	subs	w8, w8, w9
	b.gt	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-12]
	bl	STBIW_UCHAR
	sturb	w0, [x29, #-1]
	b	.LBB0_6
.LBB0_5:
	ldr	w0, [sp, #16]
	bl	STBIW_UCHAR
	sturb	w0, [x29, #-1]
	b	.LBB0_6
.LBB0_6:
	ldurb	w0, [x29, #-1]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbiw__paeth, .Lfunc_end0-stbiw__paeth
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__paeth
	.addrsig_sym abs
	.addrsig_sym STBIW_UCHAR