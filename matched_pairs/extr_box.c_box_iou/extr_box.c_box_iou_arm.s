	.text
	.globl	box_iou                         // -- Begin function box_iou
	.p2align	2
	.type	box_iou,@function
box_iou:                                // @box_iou
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #8]
	bl	box_intersection
	str	s0, [sp, #4]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #8]
	bl	box_union
	fmov	s1, s0
	ldr	s0, [sp, #4]                    // 4-byte Folded Reload
	fdiv	s0, s0, s1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	box_iou, .Lfunc_end0-box_iou
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym box_intersection
	.addrsig_sym box_union