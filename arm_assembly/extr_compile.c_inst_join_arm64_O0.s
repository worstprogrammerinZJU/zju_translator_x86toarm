	.text
	.p2align	2                               // -- Begin function inst_join
	.type	inst_join,@function
inst_join:                              // @inst_join
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	mov	w9, #0
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, ne
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	inst_join, .Lfunc_end0-inst_join
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_join
	.addrsig_sym assert