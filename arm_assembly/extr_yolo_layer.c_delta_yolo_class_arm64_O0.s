	.text
	.globl	delta_yolo_class                // -- Begin function delta_yolo_class
	.p2align	2
	.type	delta_yolo_class,@function
delta_yolo_class:                       // @delta_yolo_class
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	w2, [sp, #28]
	str	w3, [sp, #24]
	str	w4, [sp, #20]
	str	w5, [sp, #16]
	str	x6, [sp, #8]
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #28]
	ldr	s0, [x8, x9, lsl #2]
	fcmp	s0, #0.0
	b.eq	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #28]
	ldr	w10, [sp, #16]
	ldr	w11, [sp, #24]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	fmov	s0, #1.00000000
	fsub	s0, s0, s1
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #28]
	ldr	w10, [sp, #16]
	ldr	w11, [sp, #24]
	mul	w10, w10, w11
	add	w9, w9, w10
	str	s0, [x8, w9, sxtw #2]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #28]
	ldr	w10, [sp, #16]
	ldr	w11, [sp, #24]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	ldr	x8, [sp, #8]
	ldr	s0, [x8]
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_11
.LBB0_4:
	str	wzr, [sp, #4]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w9, [sp, #4]
	ldr	w10, [sp, #24]
	mov	w8, wzr
	subs	w9, w9, w10
	csinc	w8, w8, wzr, ne
	scvtf	s0, w8
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #28]
	ldr	w10, [sp, #16]
	ldr	w11, [sp, #4]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	fsub	s0, s0, s1
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #28]
	ldr	w10, [sp, #16]
	ldr	w11, [sp, #4]
	mul	w10, w10, w11
	add	w9, w9, w10
	str	s0, [x8, w9, sxtw #2]
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.ne	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #28]
	ldr	w10, [sp, #16]
	ldr	w11, [sp, #4]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	ldr	x8, [sp, #8]
	ldr	s0, [x8]
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_5
.LBB0_11:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	delta_yolo_class, .Lfunc_end0-delta_yolo_class
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig