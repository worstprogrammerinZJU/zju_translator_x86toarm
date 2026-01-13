	.text
	.globl	normalize_array                 // -- Begin function normalize_array
	.p2align	2
	.type	normalize_array,@function
normalize_array:                        // @normalize_array
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	mean_array
	str	s0, [sp, #12]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	variance_array
	bl	sqrt
	str	s0, [sp, #8]
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #16]
	ldr	s0, [x8, x9, lsl #2]
	ldr	s1, [sp, #12]
	fsub	s0, s0, s1
	ldr	s1, [sp, #8]
	fdiv	s0, s0, s1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #16]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	mean_array
	str	s0, [sp, #12]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	variance_array
	bl	sqrt
	str	s0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	normalize_array, .Lfunc_end0-normalize_array
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mean_array
	.addrsig_sym sqrt
	.addrsig_sym variance_array