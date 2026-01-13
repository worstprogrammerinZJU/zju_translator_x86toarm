	.text
	.globl	delta_region_class              // -- Begin function delta_region_class
	.p2align	2
	.type	delta_region_class,@function
delta_region_class:                     // @delta_region_class
// %bb.0:
	sub	sp, sp, #80
	ldr	w8, [sp, #80]
	str	x0, [sp, #72]
	str	x1, [sp, #64]
	str	w2, [sp, #60]
	str	w3, [sp, #56]
	str	w4, [sp, #52]
	str	x5, [sp, #40]
	str	s0, [sp, #36]
	str	w6, [sp, #32]
	str	x7, [sp, #24]
	str	w8, [sp, #20]
	ldr	x8, [sp, #40]
	cbz	x8, .LBB0_9
	b	.LBB0_1
.LBB0_1:
	fmov	s0, #1.00000000
	str	s0, [sp, #8]
	b	.LBB0_2
.LBB0_2:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_4 Depth 2
	ldr	w8, [sp, #56]
	tbnz	w8, #31, .LBB0_8
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #72]
	ldr	w9, [sp, #60]
	ldr	w10, [sp, #32]
	ldr	w11, [sp, #56]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	ldr	s0, [sp, #8]
	fmul	s0, s0, s1
	str	s0, [sp, #8]
	ldr	x8, [sp, #40]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #56]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #4]
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #4]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp]
	str	wzr, [sp, #16]
	b	.LBB0_4
.LBB0_4:                                //   Parent Loop BB0_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #40]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #4]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	b.ge	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=2
	ldr	s0, [sp, #36]
	ldr	x8, [sp, #72]
	ldr	w9, [sp, #60]
	ldr	w10, [sp, #32]
	ldr	w11, [sp]
	ldr	w12, [sp, #16]
	add	w11, w11, w12
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s2, [x8, w9, sxtw #2]
	movi	d1, #0000000000000000
	fsub	s1, s1, s2
	fmul	s0, s0, s1
	ldr	x8, [sp, #64]
	ldr	w9, [sp, #60]
	ldr	w10, [sp, #32]
	ldr	w11, [sp]
	ldr	w12, [sp, #16]
	add	w11, w11, w12
	mul	w10, w10, w11
	add	w9, w9, w10
	str	s0, [x8, w9, sxtw #2]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=2
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_4
.LBB0_7:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	s0, [sp, #36]
	ldr	x8, [sp, #72]
	ldr	w9, [sp, #60]
	ldr	w10, [sp, #32]
	ldr	w11, [sp, #56]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s2, [x8, w9, sxtw #2]
	fmov	s1, #1.00000000
	fsub	s1, s1, s2
	fmul	s0, s0, s1
	ldr	x8, [sp, #64]
	ldr	w9, [sp, #60]
	ldr	w10, [sp, #32]
	ldr	w11, [sp, #56]
	mul	w10, w10, w11
	add	w9, w9, w10
	str	s0, [x8, w9, sxtw #2]
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #24]
	ldrsw	x9, [sp, #56]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #56]
	b	.LBB0_2
.LBB0_8:
	ldr	s1, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	s0, [x8]
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_19
.LBB0_9:
	ldr	x8, [sp, #64]
	ldrsw	x9, [sp, #60]
	ldr	s0, [x8, x9, lsl #2]
	fcmp	s0, #0.0
	b.eq	.LBB0_12
	b	.LBB0_10
.LBB0_10:
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	s0, [sp, #36]
	ldr	x8, [sp, #72]
	ldr	w9, [sp, #60]
	ldr	w10, [sp, #32]
	ldr	w11, [sp, #56]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s2, [x8, w9, sxtw #2]
	fmov	s1, #1.00000000
	fsub	s1, s1, s2
	fmul	s0, s0, s1
	ldr	x8, [sp, #64]
	ldr	w9, [sp, #60]
	ldr	w10, [sp, #32]
	ldr	w11, [sp, #56]
	mul	w10, w10, w11
	add	w9, w9, w10
	str	s0, [x8, w9, sxtw #2]
	b	.LBB0_19
.LBB0_12:
	str	wzr, [sp, #12]
	b	.LBB0_13
.LBB0_13:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #52]
	subs	w8, w8, w9
	b.ge	.LBB0_18
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	s0, [sp, #36]
	ldr	w9, [sp, #12]
	ldr	w10, [sp, #56]
	mov	w8, wzr
	subs	w9, w9, w10
	csinc	w8, w8, wzr, ne
	scvtf	s1, w8
	ldr	x8, [sp, #72]
	ldr	w9, [sp, #60]
	ldr	w10, [sp, #32]
	ldr	w11, [sp, #12]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s2, [x8, w9, sxtw #2]
	fsub	s1, s1, s2
	fmul	s0, s0, s1
	ldr	x8, [sp, #64]
	ldr	w9, [sp, #60]
	ldr	w10, [sp, #32]
	ldr	w11, [sp, #12]
	mul	w10, w10, w11
	add	w9, w9, w10
	str	s0, [x8, w9, sxtw #2]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #56]
	subs	w8, w8, w9
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	x8, [sp, #72]
	ldr	w9, [sp, #60]
	ldr	w10, [sp, #32]
	ldr	w11, [sp, #12]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	ldr	x8, [sp, #24]
	ldr	s0, [x8]
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_13 Depth=1
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_13
.LBB0_18:
	b	.LBB0_19
.LBB0_19:
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	delta_region_class, .Lfunc_end0-delta_region_class
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig