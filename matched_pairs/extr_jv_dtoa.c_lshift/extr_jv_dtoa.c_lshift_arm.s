	.text
	.p2align	2                               // -- Begin function lshift
	.type	lshift,@function
lshift:                                 // @lshift
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	w8, [x29, #-20]
	asr	w8, w8, #4
	stur	w8, [x29, #-32]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-32]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #4]
	add	w8, w8, w9
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-36]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.le	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-24]
	lsl	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_1
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-28]
	bl	Balloc
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #16]
	str	x8, [sp, #16]
	stur	wzr, [x29, #-24]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-32]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #16]
	add	x9, x8, #4
	str	x9, [sp, #16]
	str	wzr, [x8]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_5
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	ldrsw	x9, [x9, #4]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #8]
	ldur	w8, [x29, #-20]
	and	w8, w8, #0xf
	stur	w8, [x29, #-20]
	cbz	w8, .LBB0_15
	b	.LBB0_9
.LBB0_9:
	ldur	w9, [x29, #-20]
	mov	w8, #16
	subs	w8, w8, w9
	stur	w8, [x29, #-28]
	str	wzr, [sp, #4]
	b	.LBB0_10
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	ldur	w9, [x29, #-20]
	lsl	w8, w8, w9
	and	w8, w8, #0xffff
	ldr	w9, [sp, #4]
	orr	w8, w8, w9
	ldr	x9, [sp, #16]
	add	x10, x9, #4
	str	x10, [sp, #16]
	str	w8, [x9]
	ldr	x8, [sp, #24]
	add	x9, x8, #4
	str	x9, [sp, #24]
	ldr	w8, [x8]
	ldur	w9, [x29, #-28]
	asr	w8, w8, w9
	str	w8, [sp, #4]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	b.lo	.LBB0_10
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	cbz	w8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_19
.LBB0_15:
	b	.LBB0_16
.LBB0_16:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	add	x9, x8, #4
	str	x9, [sp, #24]
	ldr	w8, [x8]
	ldr	x9, [sp, #16]
	add	x10, x9, #4
	str	x10, [sp, #16]
	str	w8, [x9]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_16 Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	b.lo	.LBB0_16
	b	.LBB0_18
.LBB0_18:
	b	.LBB0_19
.LBB0_19:
	ldur	w8, [x29, #-36]
	subs	w8, w8, #1
	ldr	x9, [sp, #32]
	str	w8, [x9, #4]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	Bfree
	ldr	x0, [sp, #32]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	lshift, .Lfunc_end0-lshift
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lshift
	.addrsig_sym Balloc
	.addrsig_sym Bfree