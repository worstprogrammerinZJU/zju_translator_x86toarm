	.text
	.globl	sorta_shuffle                   // -- Begin function sorta_shuffle
	.p2align	2
	.type	sorta_shuffle,@function
sorta_shuffle:                          // @sorta_shuffle
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	xzr, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.hs	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	mul	x8, x8, x9
	ldr	x9, [sp, #32]
	udiv	x8, x8, x9
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	add	x9, x9, #1
	mul	x8, x8, x9
	ldr	x9, [sp, #32]
	udiv	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	str	x8, [sp]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]
	ldur	x10, [x29, #-24]
	mul	x9, x9, x10
	add	x0, x8, x9
	ldr	x1, [sp]
	ldur	x2, [x29, #-24]
	bl	shuffle
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	sorta_shuffle, .Lfunc_end0-sorta_shuffle
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym shuffle