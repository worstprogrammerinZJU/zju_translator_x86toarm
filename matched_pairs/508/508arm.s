	.text
	.globl	fill_hierarchy                  // -- Begin function fill_hierarchy
	.p2align	2
	.type	fill_hierarchy,@function
fill_hierarchy:                         // @fill_hierarchy
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #40]
	str	w1, [sp, #36]
	str	x2, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_4 Depth 2
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #20]
	ldr	s0, [x8, x9, lsl #2]
	fcmp	s0, #0.0
	b.eq	.LBB0_7
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #20]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #16]
	b	.LBB0_4
.LBB0_4:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #16]
	tbnz	w8, #31, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=2
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #16]
	fmov	s0, #1.00000000
	str	s0, [x8, x9, lsl #2]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #16]
	b	.LBB0_4
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_9:
	str	wzr, [sp, #8]
	str	wzr, [sp, #20]
	b	.LBB0_10
.LBB0_10:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_12 Depth 2
                                        //     Child Loop BB0_19 Depth 2
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #24]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_25
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	mov	w8, #1
	str	w8, [sp, #4]
	str	wzr, [sp, #12]
	b	.LBB0_12
.LBB0_12:                               //   Parent Loop BB0_10 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #20]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	b.ge	.LBB0_17
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=2
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #12]
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	fcmp	s0, #0.0
	b.eq	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_10 Depth=1
	str	wzr, [sp, #4]
	b	.LBB0_17
.LBB0_15:                               //   in Loop: Header=BB0_12 Depth=2
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_12 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_12
.LBB0_17:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #4]
	cbz	w8, .LBB0_23
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_10 Depth=1
	str	wzr, [sp, #12]
	b	.LBB0_19
.LBB0_19:                               //   Parent Loop BB0_10 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #20]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	b.ge	.LBB0_22
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_19 Depth=2
	adrp	x8, SECRET_NUM
	ldr	w8, [x8, :lo12:SECRET_NUM]
	ldr	x9, [sp, #40]
	ldr	w10, [sp, #8]
	ldr	w11, [sp, #12]
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_19 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_19
.LBB0_22:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #20]
	ldr	w9, [x8, x9, lsl #2]
	ldr	w8, [sp, #8]
	add	w8, w8, w9
	str	w8, [sp, #8]
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_10
.LBB0_25:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	fill_hierarchy, .Lfunc_end0-fill_hierarchy
                                        // -- End function
	.type	SECRET_NUM,@object              // @SECRET_NUM
	.bss
	.globl	SECRET_NUM
	.p2align	2
SECRET_NUM:
	.word	0x00000000                      // float 0
	.size	SECRET_NUM, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SECRET_NUM