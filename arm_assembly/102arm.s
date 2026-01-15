	.text
	.globl	box_intersection                // -- Begin function box_intersection
	.p2align	2
	.type	box_intersection,@function
box_intersection:                       // @box_intersection
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-20]
	stur	x1, [x29, #-12]
	stur	x2, [sp, #12]
	stur	x3, [sp, #20]
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldr	w2, [sp, #24]
	ldr	w3, [sp, #20]
	bl	overlap
	str	s0, [sp, #8]
	ldur	w0, [x29, #-16]
	ldur	w1, [x29, #-20]
	ldr	w2, [sp, #16]
	ldr	w3, [sp, #12]
	bl	overlap
	str	s0, [sp, #4]
	ldr	s0, [sp, #8]
	fcmp	s0, #0.0
	b.mi	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	s0, [sp, #4]
	fcmp	s0, #0.0
	b.pl	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	movi	d0, #0000000000000000
	stur	s0, [x29, #-4]
	b	.LBB0_4
.LBB0_3:
	ldr	s0, [sp, #8]
	ldr	s1, [sp, #4]
	fmul	s0, s0, s1
	str	s0, [sp]
	ldr	w8, [sp]
	stur	w8, [x29, #-4]
	b	.LBB0_4
.LBB0_4:
	ldur	s0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	box_intersection, .Lfunc_end0-box_intersection
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym overlap