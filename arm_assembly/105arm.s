	.text
	.globl	box_union                       // -- Begin function box_union
	.p2align	2
	.type	box_union,@function
box_union:                              // @box_union
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	s0, [x29, #-8]
	stur	s1, [x29, #-4]
	str	s2, [sp, #16]
	str	s3, [sp, #20]
	ldur	s0, [x29, #-8]
	ldur	s1, [x29, #-4]
	ldr	s2, [sp, #16]
	ldr	s3, [sp, #20]
	bl	box_intersection
	str	s0, [sp, #12]
	ldur	s0, [x29, #-8]
	ldur	s1, [x29, #-4]
	ldr	s2, [sp, #16]
	ldr	s3, [sp, #20]
	fmul	s2, s2, s3
	fmadd	s0, s0, s1, s2
	ldr	s1, [sp, #12]
	fsub	s0, s0, s1
	str	s0, [sp, #8]
	ldr	s0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	box_union, .Lfunc_end0-box_union
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym box_intersection