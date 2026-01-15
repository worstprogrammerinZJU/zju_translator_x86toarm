	.text
	.globl	get_network_boxes               // -- Begin function get_network_boxes
	.p2align	2
	.type	get_network_boxes,@function
get_network_boxes:                      // @get_network_boxes
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	s0, [x29, #-20]
	stur	s1, [x29, #-24]
	str	x3, [sp, #32]
	str	w4, [sp, #28]
	str	x5, [sp, #16]
	ldur	x0, [x29, #-8]
	ldur	s0, [x29, #-20]
	ldr	x1, [sp, #16]
	bl	make_network_boxes
	str	x0, [sp, #8]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	ldur	s0, [x29, #-20]
	ldur	s1, [x29, #-24]
	ldr	x3, [sp, #32]
	ldr	w4, [sp, #28]
	ldr	x5, [sp, #8]
	bl	fill_network_boxes
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	get_network_boxes, .Lfunc_end0-get_network_boxes
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_network_boxes
	.addrsig_sym fill_network_boxes