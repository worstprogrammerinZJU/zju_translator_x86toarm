	.text
	.p2align	2                               // -- Begin function siftup
	.type	siftup,@function
siftup:                                 // @siftup
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	lsl	x8, x8, #1
	add	x8, x8, #1
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	lsl	x8, x8, #1
	add	x8, x8, #2
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.hs	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #8]
	bl	less
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.hs	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	less
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #8]
	bl	swap
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-16]
	b	.LBB0_1
.Lfunc_end0:
	.size	siftup, .Lfunc_end0-siftup
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym siftup
	.addrsig_sym less
	.addrsig_sym swap