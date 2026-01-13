	.text
	.globl	make_network_boxes              // -- Begin function make_network_boxes
	.p2align	2
	.type	make_network_boxes,@function
make_network_boxes:                     // @make_network_boxes
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	s0, [x29, #-12]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	str	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	ldur	s0, [x29, #-12]
	bl	num_detections
	str	w0, [sp, #8]
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	.LBB0_2
.LBB0_2:
	ldr	w0, [sp, #8]
	mov	w1, #16
	bl	calloc
	str	x0, [sp]
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w0, [sp, #16]
	mov	w1, #4
	bl	calloc
	ldr	x8, [sp]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9, lsl #4
	str	x0, [x8, #8]
	ldr	w8, [sp, #20]
	subs	w8, w8, #4
	b.le	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #20]
	mov	w1, #4
	subs	w0, w8, #4
	bl	calloc
	ldr	x8, [sp]
	ldrsw	x9, [sp, #12]
	lsl	x9, x9, #4
	str	x0, [x8, x9]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_8:
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	make_network_boxes, .Lfunc_end0-make_network_boxes
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym num_detections
	.addrsig_sym calloc