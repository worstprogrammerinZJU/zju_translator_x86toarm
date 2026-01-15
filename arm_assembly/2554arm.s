	.text
	.globl	dist_array                      // -- Begin function dist_array
	.p2align	2
	.type	dist_array,@function
dist_array:                             // @dist_array
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	str	w3, [sp, #8]
	movi	d0, #0000000000000000
	str	s0, [sp]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #4]
	ldr	s0, [x8, x9, lsl #2]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	ldr	s1, [x8, x9, lsl #2]
	fsub	s0, s0, s1
	mov	w0, #2
	bl	pow
	scvtf	s1, x0
	ldr	s0, [sp]
	fadd	s0, s0, s1
	str	s0, [sp]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #8]
	ldr	w8, [sp, #4]
	add	w8, w8, w9
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	ldr	s0, [sp]
	bl	sqrt
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	dist_array, .Lfunc_end0-dist_array
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pow
	.addrsig_sym sqrt