	.text
	.p2align	2                               // -- Begin function needfree
	.type	needfree,@function
needfree:                               // @needfree
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w8, [x8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.lt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldr	x0, [sp, #16]
	bl	makenextfile
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	needfree, .Lfunc_end0-needfree
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym needfree
	.addrsig_sym makenextfile