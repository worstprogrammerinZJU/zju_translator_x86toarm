	.text
	.globl	rotate_image_cw                 // -- Begin function rotate_image_cw
	.p2align	2
	.type	rotate_image_cw,@function
rotate_image_cw:                        // @rotate_image_cw
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	add	w8, w8, #400
	mov	w10, #4
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	ldr	w8, [x0]
	str	w8, [sp, #24]
	stur	wzr, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
                                        //         Child Loop BB0_7 Depth 4
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_16
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-20]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
                                        //         Child Loop BB0_7 Depth 4
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	stur	wzr, [x29, #-12]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_7 Depth 4
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #24]
	mov	w10, #2
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	stur	wzr, [x29, #-16]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        //       Parent Loop BB0_5 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldur	w8, [x29, #-16]
	ldr	w9, [sp, #24]
	subs	w9, w9, #1
	mov	w10, #2
	sdiv	w9, w9, w10
	add	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=4
	ldr	x13, [sp, #8]                   // 8-byte Folded Reload
	ldr	x8, [x13, #16]
	ldur	w9, [x29, #-16]
	ldr	w10, [x13]
	ldur	w11, [x29, #-12]
	ldr	w12, [x13, #4]
	ldur	w14, [x29, #-20]
	mul	w12, w12, w14
	add	w11, w11, w12
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #20]
	ldr	x8, [x13, #16]
	ldr	w9, [sp, #24]
	subs	w9, w9, #1
	ldur	w10, [x29, #-12]
	subs	w9, w9, w10
	ldr	w10, [x13]
	ldur	w11, [x29, #-16]
	ldr	w12, [x13, #4]
	ldur	w14, [x29, #-20]
	mul	w12, w12, w14
	add	w11, w11, w12
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [x13, #16]
	ldur	w10, [x29, #-16]
	ldr	w11, [x13]
	ldur	w12, [x29, #-12]
	ldr	w14, [x13, #4]
	ldur	w15, [x29, #-20]
	mul	w14, w14, w15
	add	w12, w12, w14
	mul	w11, w11, w12
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	ldr	x8, [x13, #16]
	ldr	w9, [sp, #24]
	subs	w9, w9, #1
	ldur	w10, [x29, #-16]
	subs	w9, w9, w10
	ldr	w10, [x13]
	ldr	w11, [sp, #24]
	subs	w11, w11, #1
	ldur	w12, [x29, #-12]
	subs	w11, w11, w12
	ldr	w12, [x13, #4]
	ldur	w14, [x29, #-20]
	mul	w12, w12, w14
	add	w11, w11, w12
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [x13, #16]
	ldr	w10, [sp, #24]
	subs	w10, w10, #1
	ldur	w11, [x29, #-12]
	subs	w10, w10, w11
	ldr	w11, [x13]
	ldur	w12, [x29, #-16]
	ldr	w14, [x13, #4]
	ldur	w15, [x29, #-20]
	mul	w14, w14, w15
	add	w12, w12, w14
	mul	w11, w11, w12
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	ldr	x8, [x13, #16]
	ldur	w9, [x29, #-12]
	ldr	w10, [x13]
	ldr	w11, [sp, #24]
	subs	w11, w11, #1
	ldur	w12, [x29, #-16]
	subs	w11, w11, w12
	ldr	w12, [x13, #4]
	ldur	w14, [x29, #-20]
	mul	w12, w12, w14
	add	w11, w11, w12
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [x13, #16]
	ldr	w10, [sp, #24]
	subs	w10, w10, #1
	ldur	w11, [x29, #-16]
	subs	w10, w10, w11
	ldr	w11, [x13]
	ldr	w12, [sp, #24]
	subs	w12, w12, #1
	ldur	w14, [x29, #-12]
	subs	w12, w12, w14
	ldr	w14, [x13, #4]
	ldur	w15, [x29, #-20]
	mul	w14, w14, w15
	add	w12, w12, w14
	mul	w11, w11, w12
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	ldr	w8, [sp, #20]
	ldr	x9, [x13, #16]
	ldur	w10, [x29, #-12]
	ldr	w11, [x13]
	ldr	w12, [sp, #24]
	subs	w12, w12, #1
	ldur	w14, [x29, #-16]
	subs	w12, w12, w14
	ldr	w13, [x13, #4]
	ldur	w14, [x29, #-20]
	mul	w13, w13, w14
	add	w12, w12, w13
	mul	w11, w11, w12
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=4
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	.LBB0_7
.LBB0_10:                               //   in Loop: Header=BB0_5 Depth=3
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_5 Depth=3
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_5
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_3
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_1
.LBB0_16:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	rotate_image_cw, .Lfunc_end0-rotate_image_cw
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert