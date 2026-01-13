	.text
	.p2align	2                               // -- Begin function cmp
	.type	cmp,@function
cmp:                                    // @cmp
// %bb.0:
	sub	sp, sp, #80
	str	x0, [sp, #64]
	str	x1, [sp, #56]
	str	x2, [sp, #48]
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	x8, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #8]
	ldr	w9, [sp, #8]
	ldr	w8, [sp, #12]
	subs	w8, w8, w9
	str	w8, [sp, #12]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	str	w8, [sp, #76]
	b	.LBB0_9
.LBB0_2:
	ldr	x8, [sp, #56]
	ldr	x8, [x8, #8]
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #8]
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #40]
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #8]
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #24]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	subs	x9, x8, #8
	str	x9, [sp, #40]
	ldur	x8, [x8, #-8]
	ldr	x9, [sp, #24]
	subs	x10, x9, #8
	str	x10, [sp, #24]
	ldur	x9, [x9, #-8]
	subs	x8, x8, x9
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #40]
	ldr	x9, [x8]
	ldr	x8, [sp, #24]
	ldr	x10, [x8]
	mov	w8, #1
	subs	x9, x9, x10
	csinv	w8, w8, wzr, ge
	str	w8, [sp, #76]
	b	.LBB0_9
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.hi	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_8
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_3
.LBB0_8:
	str	wzr, [sp, #76]
	b	.LBB0_9
.LBB0_9:
	ldr	w0, [sp, #76]
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	cmp, .Lfunc_end0-cmp
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cmp