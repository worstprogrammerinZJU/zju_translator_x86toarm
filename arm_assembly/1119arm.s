	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function normalize_image2
.LCPI0_0:
	.xword	0x3e112e0be826d695              // double 1.0000000000000001E-9
	.text
	.globl	normalize_image2
	.p2align	2
	.type	normalize_image2,@function
normalize_image2:                       // @normalize_image2
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldr	w0, [x0]
	mov	w1, #4
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	stur	x8, [x29, #-8]
	ldr	w0, [x0]
	bl	calloc
	stur	x0, [x29, #-16]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x8, [x10, #8]
	ldur	w9, [x29, #-20]
	ldr	w11, [x10, #16]
	mul	w9, w9, w11
	ldr	w10, [x10, #20]
	mul	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-16]
	ldursw	x10, [x29, #-20]
	str	w8, [x9, x10, lsl #2]
	ldur	x9, [x29, #-8]
	ldursw	x10, [x29, #-20]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_4:
	str	wzr, [sp, #24]
	b	.LBB0_5
.LBB0_5:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_7 Depth 2
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #24]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_16
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	stur	wzr, [x29, #-20]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	ldr	w9, [x10, #16]
	ldr	w10, [x10, #20]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	ldr	x8, [x11, #8]
	ldur	w9, [x29, #-20]
	ldr	w10, [sp, #24]
	ldr	w12, [x11, #16]
	mul	w10, w10, w12
	ldr	w11, [x11, #20]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #20]
	ldr	s0, [sp, #20]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #24]
	ldr	s1, [x8, x9, lsl #2]
	fcmp	s0, s1
	b.pl	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #20]
	ldur	x9, [x29, #-8]
	ldrsw	x10, [sp, #24]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	s0, [sp, #20]
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #24]
	ldr	s1, [x8, x9, lsl #2]
	fcmp	s0, s1
	b.le	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #20]
	ldur	x9, [x29, #-16]
	ldrsw	x10, [sp, #24]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=2
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_7 Depth=2
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_7
.LBB0_14:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_5
.LBB0_16:
	stur	wzr, [x29, #-20]
	b	.LBB0_17
.LBB0_17:                               // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_22
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_17 Depth=1
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	ldr	s0, [x8, x9, lsl #2]
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-20]
	ldr	s1, [x8, x9, lsl #2]
	fsub	s0, s0, s1
	fcvt	d0, s0
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fcmp	d0, d1
	b.pl	.LBB0_20
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_17 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-20]
	movi	d0, #0000000000000000
	str	s0, [x8, x9, lsl #2]
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	fmov	s0, #1.00000000
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_17 Depth=1
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_17 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_17
.LBB0_22:
	str	wzr, [sp, #24]
	b	.LBB0_23
.LBB0_23:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_25 Depth 2
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #24]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_30
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_23 Depth=1
	stur	wzr, [x29, #-20]
	b	.LBB0_25
.LBB0_25:                               //   Parent Loop BB0_23 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	ldr	w9, [x10, #20]
	ldr	w10, [x10, #16]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_28
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_25 Depth=2
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	ldr	x8, [x11, #8]
	ldur	w9, [x29, #-20]
	ldr	w10, [sp, #24]
	ldr	w12, [x11, #16]
	mul	w10, w10, w12
	ldr	w12, [x11, #20]
	mul	w10, w10, w12
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #24]
	ldr	s1, [x8, x9, lsl #2]
	fsub	s0, s0, s1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #24]
	ldr	s1, [x8, x9, lsl #2]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #24]
	ldr	s2, [x8, x9, lsl #2]
	fsub	s1, s1, s2
	fdiv	s0, s0, s1
	ldr	x8, [x11, #8]
	ldur	w9, [x29, #-20]
	ldr	w10, [sp, #24]
	ldr	w12, [x11, #16]
	mul	w10, w10, w12
	ldr	w11, [x11, #20]
	mul	w10, w10, w11
	add	w9, w9, w10
	str	s0, [x8, w9, sxtw #2]
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_25 Depth=2
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_25
.LBB0_28:                               //   in Loop: Header=BB0_23 Depth=1
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_23 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_23
.LBB0_30:
	ldur	x0, [x29, #-8]
	bl	free
	ldur	x0, [x29, #-16]
	bl	free
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	normalize_image2, .Lfunc_end0-normalize_image2
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym free