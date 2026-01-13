	.text
	.p2align	2                               // -- Begin function skip_space
	.type	skip_space,@function
skip_space:                             // @skip_space
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	do_skip_space
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_6
.LBB0_2:
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	bl	do_skip_space
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_3
.LBB0_5:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	skip_space, .Lfunc_end0-skip_space
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skip_space
	.addrsig_sym do_skip_space