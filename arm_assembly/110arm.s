	.text
	.globl	do_nms_obj                      // -- Begin function do_nms_obj
	.p2align	2
	.type	do_nms_obj,@function
do_nms_obj:                             // @do_nms_obj
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	s0, [x29, #-20]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #1
	stur	w8, [x29, #-32]
	stur	wzr, [x29, #-24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-32]
	subs	w8, w8, w9
	b.gt	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-24]
	lsl	x9, x9, #5
	ldr	x8, [x8, x9]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-24]
	add	x8, x8, x9, lsl #5
	ldr	q0, [x8]
	str	q0, [sp, #16]
	ldr	q0, [x8, #16]
	str	q0, [sp, #32]
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-24]
	add	x8, x8, x9, lsl #5
	ldur	x9, [x29, #-8]
	ldursw	x10, [x29, #-32]
	add	x9, x9, x10, lsl #5
	ldr	q0, [x9]
	str	q0, [x8]
	ldr	q0, [x9, #16]
	str	q0, [x8, #16]
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-32]
	add	x8, x8, x9, lsl #5
	ldr	q0, [sp, #16]
	str	q0, [x8]
	ldr	q0, [sp, #32]
	str	q0, [x8, #16]
	ldur	w8, [x29, #-32]
	subs	w8, w8, #1
	stur	w8, [x29, #-32]
	ldur	w8, [x29, #-24]
	subs	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_1
.LBB0_6:
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	stur	wzr, [x29, #-24]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-24]
	add	x9, x8, x9, lsl #5
	mov	w8, #-1
	str	w8, [x9, #8]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_7
.LBB0_10:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	adrp	x8, nms_comparator
	ldr	w3, [x8, :lo12:nms_comparator]
	mov	w2, #32
	bl	qsort
	stur	wzr, [x29, #-24]
	b	.LBB0_11
.LBB0_11:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_15 Depth 2
                                        //       Child Loop BB0_20 Depth 3
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_28
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-24]
	lsl	x9, x9, #5
	ldr	x8, [x8, x9]
	cbnz	x8, .LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	b	.LBB0_27
.LBB0_14:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-24]
	add	x8, x8, x9, lsl #5
	ldr	w8, [x8, #24]
	str	w8, [sp, #12]
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_15
.LBB0_15:                               //   Parent Loop BB0_11 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_20 Depth 3
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_26
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_15 Depth=2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-28]
	lsl	x9, x9, #5
	ldr	x8, [x8, x9]
	cbnz	x8, .LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_15 Depth=2
	b	.LBB0_25
.LBB0_18:                               //   in Loop: Header=BB0_15 Depth=2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-28]
	add	x8, x8, x9, lsl #5
	ldr	w8, [x8, #24]
	str	w8, [sp, #8]
	ldr	w0, [sp, #12]
	ldr	w1, [sp, #8]
	bl	box_iou
	ldur	s1, [x29, #-20]
	fcmp	s0, s1
	b.le	.LBB0_24
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_15 Depth=2
	ldur	x9, [x29, #-8]
	ldursw	x8, [x29, #-28]
	lsl	x10, x8, #5
	mov	x8, xzr
	str	x8, [x9, x10]
	stur	wzr, [x29, #-32]
	b	.LBB0_20
.LBB0_20:                               //   Parent Loop BB0_11 Depth=1
                                        //     Parent Loop BB0_15 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_23
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_20 Depth=3
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-28]
	add	x8, x8, x9, lsl #5
	ldr	x9, [x8, #16]
	ldursw	x10, [x29, #-32]
	mov	x8, xzr
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_20 Depth=3
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_20
.LBB0_23:                               //   in Loop: Header=BB0_15 Depth=2
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_15 Depth=2
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_15 Depth=2
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_15
.LBB0_26:                               //   in Loop: Header=BB0_11 Depth=1
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_11
.LBB0_28:
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	do_nms_obj, .Lfunc_end0-do_nms_obj
                                        // -- End function
	.type	nms_comparator,@object          // @nms_comparator
	.bss
	.globl	nms_comparator
	.p2align	2
nms_comparator:
	.word	0                               // 0x0
	.size	nms_comparator, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym qsort
	.addrsig_sym box_iou
	.addrsig_sym nms_comparator