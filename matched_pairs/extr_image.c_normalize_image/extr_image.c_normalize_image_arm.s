	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function normalize_image
.LCPI0_0:
	.xword	0x3e112e0be826d695              // double 1.0000000000000001E-9
	.text
	.globl	normalize_image
	.p2align	2
	.type	normalize_image,@function
normalize_image:                        // @normalize_image
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	mov	w8, #38527
	movk	w8, #19224, lsl #16
	fmov	s0, w8
	str	s0, [sp, #24]
	mov	w8, #9200
	movk	w8, #51572, lsl #16
	fmov	s0, w8
	str	s0, [sp, #20]
	str	wzr, [sp, #28]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	w8, [sp, #28]
	ldr	w9, [x10]
	ldr	w11, [x10, #4]
	mul	w9, w9, w11
	ldr	w10, [x10, #8]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #16]
	ldr	s0, [sp, #16]
	ldr	s1, [sp, #24]
	fcmp	s0, s1
	b.pl	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	str	w8, [sp, #24]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #16]
	ldr	s1, [sp, #20]
	fcmp	s0, s1
	b.le	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	str	w8, [sp, #20]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_1
.LBB0_8:
	ldr	s0, [sp, #20]
	ldr	s1, [sp, #24]
	fsub	s0, s0, s1
	fcvt	d0, s0
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fcmp	d0, d1
	b.pl	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	movi	d0, #0000000000000000
	str	s0, [sp, #24]
	fmov	s0, #1.00000000
	str	s0, [sp, #20]
	b	.LBB0_10
.LBB0_10:
	str	wzr, [sp, #28]
	b	.LBB0_11
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	w8, [sp, #28]
	ldr	w9, [x10, #8]
	ldr	w11, [x10, #4]
	mul	w9, w9, w11
	ldr	w10, [x10]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [x8, #16]
	ldrsw	x10, [sp, #28]
	ldr	s0, [x9, x10, lsl #2]
	ldr	s1, [sp, #24]
	fsub	s0, s0, s1
	ldr	s1, [sp, #20]
	ldr	s2, [sp, #24]
	fsub	s1, s1, s2
	fdiv	s0, s0, s1
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #28]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_11
.LBB0_14:
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	normalize_image, .Lfunc_end0-normalize_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig