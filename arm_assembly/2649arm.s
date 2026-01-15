	.text
	.globl	walgc                           // -- Begin function walgc
	.p2align	2
	.type	walgc,@function
walgc:                                  // @walgc
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	mov	w9, #0
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	w8, [x8, #16]
	subs	w8, w8, #0
	cset	w8, eq
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_7
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x9, [x29, #-8]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	bl	unlink
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	bl	free
	ldr	x0, [sp, #16]
	bl	free
	b	.LBB0_1
.LBB0_7:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	walgc, .Lfunc_end0-walgc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym unlink
	.addrsig_sym free