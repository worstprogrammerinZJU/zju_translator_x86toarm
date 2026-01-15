	.text
	.globl	draw_box_width                  // -- Begin function draw_box_width
	.p2align	2
	.type	draw_box_width,@function
draw_box_width:                         // @draw_box_width
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	str	w5, [sp, #24]
	str	s0, [sp, #20]
	str	s1, [sp, #16]
	str	s2, [sp, #12]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-4]
	ldur	w8, [x29, #-8]
	ldr	w9, [sp, #8]
	add	w1, w8, w9
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #8]
	add	w2, w8, w9
	ldur	w8, [x29, #-16]
	ldr	w9, [sp, #8]
	subs	w3, w8, w9
	ldur	w8, [x29, #-20]
	ldr	w9, [sp, #8]
	subs	w4, w8, w9
	ldr	s0, [sp, #20]
	ldr	s1, [sp, #16]
	ldr	s2, [sp, #12]
	bl	draw_box
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	draw_box_width, .Lfunc_end0-draw_box_width
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym draw_box