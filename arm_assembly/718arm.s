	.text
	.globl	bilinear_init                   // -- Begin function bilinear_init
	.p2align	2
	.type	bilinear_init,@function
bilinear_init:                          // @bilinear_init
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldr	w8, [x0]
	subs	w8, w8, #1
	scvtf	d0, w8
	fmov	d1, #2.00000000
	fdiv	d0, d0, d1
	fcvt	s0, d0
	stur	s0, [x29, #-16]
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-8]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	s0, [x29, #-4]
	scvtf	s0, s0
	ldur	s1, [x29, #-16]
	fsub	s0, s0, s1
	fcvtzs	w0, s0
	bl	fabs
	mov	w8, #1
	str	w8, [sp]                        // 4-byte Folded Spill
	subs	w8, w8, w0
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	s0, [x29, #-8]
	scvtf	s0, s0
	ldur	s1, [x29, #-16]
	fsub	s0, s0, s1
	fcvtzs	w0, s0
	bl	fabs
	ldr	w10, [sp]                       // 4-byte Folded Reload
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	subs	w10, w10, w0
	mul	w8, w8, w10
	scvtf	s0, w8
	stur	s0, [x29, #-20]
	ldur	w8, [x29, #-12]
	ldr	w11, [x9, #8]
	sdiv	w10, w8, w11
	mul	w10, w10, w11
	subs	w8, w8, w10
	str	w8, [sp, #24]
	ldur	w8, [x29, #-12]
	ldr	w10, [x9]
	mul	w8, w8, w10
	ldr	w10, [x9]
	mul	w8, w8, w10
	ldr	w10, [x9, #8]
	mul	w8, w8, w10
	ldr	w10, [sp, #24]
	ldr	w11, [x9]
	mul	w10, w10, w11
	ldr	w11, [x9]
	mul	w10, w10, w11
	add	w8, w8, w10
	ldur	w10, [x29, #-8]
	ldr	w11, [x9]
	mul	w10, w10, w11
	add	w8, w8, w10
	ldur	w10, [x29, #-4]
	add	w8, w8, w10
	str	w8, [sp, #20]
	ldur	w8, [x29, #-20]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #20]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_12:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	bilinear_init, .Lfunc_end0-bilinear_init
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fabs