	.text
	.globl	derivative                      // -- Begin function derivative
	.p2align	2
	.type	derivative,@function
derivative:                             // @derivative
// %bb.0:
	sub	sp, sp, #80
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	str	x0, [sp, #64]
	str	x1, [sp, #72]
	str	x2, [sp, #48]
	str	x3, [sp, #56]
	str	wzr, [x8]
	str	xzr, [x8, #16]
	ldr	w8, [sp, #64]
	ldr	w9, [sp, #68]
	mov	w10, #2
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	scvtf	s0, w8
	str	s0, [sp, #44]
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #52]
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	scvtf	s0, w8
	str	s0, [sp, #40]
	ldr	s0, [sp, #44]
	ldr	s1, [sp, #40]
	fcmp	s0, s1
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	ldr	d0, [x9, #16]
	scvtf	d0, d0
	fmov	d1, #0.50000000
	fadd	d0, d0, d1
	fcvtzs	x8, d0
	str	x8, [x9, #16]
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #64]
	ldr	w9, [sp, #68]
	mov	w10, #2
	sdiv	w9, w9, w10
	add	w8, w8, w9
	scvtf	s0, w8
	str	s0, [sp, #36]
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #52]
	sdiv	w9, w9, w10
	add	w8, w8, w9
	scvtf	s0, w8
	str	s0, [sp, #32]
	ldr	s0, [sp, #36]
	ldr	s1, [sp, #32]
	fcmp	s0, s1
	b.pl	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	ldr	d0, [x9, #16]
	scvtf	d0, d0
	fmov	d1, #0.50000000
	fadd	d0, d0, d1
	fcvtzs	x8, d0
	str	x8, [x9, #16]
	b	.LBB0_4
.LBB0_4:
	ldr	s0, [sp, #44]
	ldr	s1, [sp, #32]
	fcmp	s0, s1
	b.le	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	mov	w9, #-1
	str	w9, [x8]
	str	xzr, [x8, #16]
	b	.LBB0_6
.LBB0_6:
	ldr	s0, [sp, #36]
	ldr	s1, [sp, #40]
	fcmp	s0, s1
	b.pl	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	mov	w9, #1
	str	w9, [x8]
	str	xzr, [x8, #16]
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	wzr, [x8, #4]
	str	xzr, [x8, #8]
	ldr	w8, [sp, #72]
	ldr	w9, [sp, #76]
	mov	w10, #2
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	scvtf	s0, w8
	str	s0, [sp, #28]
	ldr	w8, [sp, #56]
	ldr	w9, [sp, #60]
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	scvtf	s0, w8
	str	s0, [sp, #24]
	ldr	s0, [sp, #28]
	ldr	s1, [sp, #24]
	fcmp	s0, s1
	b.le	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x9, #4]
	subs	w8, w8, #1
	str	w8, [x9, #4]
	ldr	d0, [x9, #8]
	scvtf	d0, d0
	fmov	d1, #0.50000000
	fadd	d0, d0, d1
	fcvtzs	x8, d0
	str	x8, [x9, #8]
	b	.LBB0_10
.LBB0_10:
	ldr	w8, [sp, #72]
	ldr	w9, [sp, #76]
	mov	w10, #2
	sdiv	w9, w9, w10
	add	w8, w8, w9
	scvtf	s0, w8
	str	s0, [sp, #20]
	ldr	w8, [sp, #56]
	ldr	w9, [sp, #60]
	sdiv	w9, w9, w10
	add	w8, w8, w9
	scvtf	s0, w8
	str	s0, [sp, #16]
	ldr	s0, [sp, #20]
	ldr	s1, [sp, #16]
	fcmp	s0, s1
	b.pl	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x9, #4]
	add	w8, w8, #1
	str	w8, [x9, #4]
	ldr	d0, [x9, #8]
	scvtf	d0, d0
	fmov	d1, #0.50000000
	fadd	d0, d0, d1
	fcvtzs	x8, d0
	str	x8, [x9, #8]
	b	.LBB0_12
.LBB0_12:
	ldr	s0, [sp, #28]
	ldr	s1, [sp, #16]
	fcmp	s0, s1
	b.le	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	mov	w9, #-1
	str	w9, [x8, #4]
	str	xzr, [x8, #8]
	b	.LBB0_14
.LBB0_14:
	ldr	s0, [sp, #20]
	ldr	s1, [sp, #24]
	fcmp	s0, s1
	b.pl	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	mov	w9, #1
	str	w9, [x8, #4]
	str	xzr, [x8, #8]
	b	.LBB0_16
.LBB0_16:
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	derivative, .Lfunc_end0-derivative
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig