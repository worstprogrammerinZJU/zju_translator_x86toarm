	.text
	.globl	forward_crop_layer              // -- Begin function forward_crop_layer
	.p2align	2
	.type	forward_crop_layer,@function
forward_crop_layer:                     // @forward_crop_layer
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	str	x0, [sp]                        // 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	str	wzr, [sp, #32]
	ldr	w8, [x0, #40]
	mov	w9, #0
	str	w9, [sp, #8]                    // 4-byte Folded Spill
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	rand
	mov	w9, #2
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #28]
	bl	rand
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	w8, [x9]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	add	w9, w8, #1
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	str	w8, [sp, #24]
	bl	rand
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #12]
	subs	w9, w9, w10
	add	w10, w9, #1
	sdiv	w9, w0, w10
	mul	w9, w9, w10
	subs	w9, w0, w9
	str	w9, [sp, #20]
	fmov	s0, #2.00000000
	str	s0, [sp, #16]
	fmov	s0, #-1.00000000
	str	s0, [sp, #12]
	ldr	x8, [x8, #32]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	fmov	s0, #1.00000000
	str	s0, [sp, #16]
	movi	d0, #0000000000000000
	str	s0, [sp, #12]
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-8]
	cbnz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x10, [sp]                       // 8-byte Folded Reload
	str	wzr, [sp, #28]
	ldr	w8, [x10]
	ldr	w9, [x10, #4]
	subs	w8, w8, w9
	mov	w9, #2
	sdiv	w8, w8, w9
	str	w8, [sp, #24]
	ldr	w8, [x10, #8]
	ldr	w10, [x10, #12]
	subs	w8, w8, w10
	sdiv	w8, w8, w9
	str	w8, [sp, #20]
	b	.LBB0_6
.LBB0_6:
	stur	wzr, [x29, #-32]
	b	.LBB0_7
.LBB0_7:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_9 Depth 2
                                        //       Child Loop BB0_11 Depth 3
                                        //         Child Loop BB0_13 Depth 4
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldur	w8, [x29, #-32]
	ldr	w9, [x9, #16]
	subs	w8, w8, w9
	b.ge	.LBB0_25
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	stur	wzr, [x29, #-28]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_7 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_11 Depth 3
                                        //         Child Loop BB0_13 Depth 4
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldur	w8, [x29, #-28]
	ldr	w9, [x9, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_23
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=2
	stur	wzr, [x29, #-20]
	b	.LBB0_11
.LBB0_11:                               //   Parent Loop BB0_7 Depth=1
                                        //     Parent Loop BB0_9 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_13 Depth 4
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_21
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=3
	stur	wzr, [x29, #-24]
	b	.LBB0_13
.LBB0_13:                               //   Parent Loop BB0_7 Depth=1
                                        //     Parent Loop BB0_9 Depth=2
                                        //       Parent Loop BB0_11 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldur	w8, [x29, #-24]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_19
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_13 Depth=4
	ldr	w8, [sp, #28]
	cbz	w8, .LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_13 Depth=4
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w8, [x8, #8]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	subs	w8, w8, #1
	str	w8, [sp, #40]
	b	.LBB0_17
.LBB0_16:                               //   in Loop: Header=BB0_13 Depth=4
	ldur	w8, [x29, #-24]
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	str	w8, [sp, #40]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_13 Depth=4
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldur	w9, [x29, #-20]
	ldr	w10, [sp, #24]
	add	w9, w9, w10
	stur	w9, [x29, #-36]
	ldr	w9, [sp, #40]
	ldr	w10, [x8, #8]
	ldur	w11, [x29, #-36]
	ldr	w12, [x8]
	ldur	w13, [x29, #-28]
	ldr	w14, [x8, #20]
	ldur	w15, [x29, #-32]
	mul	w14, w14, w15
	add	w13, w13, w14
	mul	w12, w12, w13
	add	w11, w11, w12
	mul	w10, w10, w11
	add	w9, w9, w10
	str	w9, [sp, #36]
	ldur	x9, [x29, #-16]
	ldrsw	x10, [sp, #36]
	ldr	s0, [x9, x10, lsl #2]
	ldr	s1, [sp, #16]
	ldr	s2, [sp, #12]
	fmadd	s0, s0, s1, s2
	ldr	x8, [x8, #24]
	ldrsw	x9, [sp, #32]
	mov	w10, w9
	add	w10, w10, #1
	str	w10, [sp, #32]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_13 Depth=4
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_13
.LBB0_19:                               //   in Loop: Header=BB0_11 Depth=3
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_11 Depth=3
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_11
.LBB0_21:                               //   in Loop: Header=BB0_9 Depth=2
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_9 Depth=2
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_9
.LBB0_23:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_7
.LBB0_25:
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	forward_crop_layer, .Lfunc_end0-forward_crop_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand