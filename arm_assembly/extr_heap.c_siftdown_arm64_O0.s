	.text
	.p2align	2                               // -- Begin function siftdown
	.type	siftdown,@function
siftdown:                               // @siftdown
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	subs	x8, x8, #1
	mov	x9, #2
	udiv	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	bl	less
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	swap
	ldr	x8, [sp, #8]
	str	x8, [sp, #16]
	b	.LBB0_1
.Lfunc_end0:
	.size	siftdown, .Lfunc_end0-siftdown
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym siftdown
	.addrsig_sym less
	.addrsig_sym swap