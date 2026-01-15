	.text
	.p2align	2                               // -- Begin function nesting_level
	.type	nesting_level,@function
nesting_level:                          // @nesting_level
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	xzr, [sp, #24]
	ldur	x8, [x29, #-8]
	mov	w9, #0
	str	w9, [sp, #20]                   // 4-byte Folded Spill
	cbz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	mov	w9, #0
	str	w9, [sp, #20]                   // 4-byte Folded Spill
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, ne
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	mov	w9, #0
	str	w9, [sp, #16]                   // 4-byte Folded Spill
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, ne
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	.LBB0_4
.LBB0_8:
	ldur	x8, [x29, #-8]
	mov	w9, #0
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	cbz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_10
.LBB0_10:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	nesting_level, .Lfunc_end0-nesting_level
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nesting_level
	.addrsig_sym assert