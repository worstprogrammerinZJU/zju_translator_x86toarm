	.text
	.p2align	2                               // -- Begin function copy_incomplete_type
	.type	copy_incomplete_type,@function
copy_incomplete_type:                   // @copy_incomplete_type
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_6
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	adds	w8, w8, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	copy_type
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	stur	x8, [x29, #-8]
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	copy_incomplete_type, .Lfunc_end0-copy_incomplete_type
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_incomplete_type
	.addrsig_sym copy_type