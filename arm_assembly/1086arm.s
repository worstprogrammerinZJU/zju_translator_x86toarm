	.text
	.globl	draw_bbox                       // -- Begin function draw_bbox
	.p2align	2
	.type	draw_bbox,@function
draw_bbox:                              // @draw_bbox
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-16]
	stur	w3, [x29, #-28]
	str	s0, [sp, #32]
	str	s1, [sp, #28]
	str	s2, [sp, #24]
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-20]
	mov	w10, #2
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	ldur	w9, [x29, #-8]
	mul	w8, w8, w9
	str	w8, [sp, #20]
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-20]
	sdiv	w9, w9, w10
	add	w8, w8, w9
	ldur	w9, [x29, #-8]
	mul	w8, w8, w9
	str	w8, [sp, #16]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-12]
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	ldur	w9, [x29, #-4]
	mul	w8, w8, w9
	str	w8, [sp, #12]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-12]
	sdiv	w9, w9, w10
	add	w8, w8, w9
	ldur	w9, [x29, #-4]
	mul	w8, w8, w9
	str	w8, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #4]
	add	w1, w8, w9
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #4]
	add	w2, w8, w9
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #4]
	subs	w3, w8, w9
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	subs	w4, w8, w9
	ldr	s0, [sp, #32]
	ldr	s1, [sp, #28]
	ldr	s2, [sp, #24]
	ldur	x0, [x29, #-8]
	bl	draw_box
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	draw_bbox, .Lfunc_end0-draw_bbox
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym draw_box