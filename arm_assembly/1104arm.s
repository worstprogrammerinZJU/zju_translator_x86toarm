	.text
	.globl	grayscale_image_3c              // -- Begin function grayscale_image_3c
	.p2align	2
	.type	grayscale_image_3c,@function
grayscale_image_3c:                     // @grayscale_image_3c
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldr	w8, [x0]
	subs	w8, w8, #3
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	adrp	x8, .L__const.grayscale_image_3c.scale
	add	x8, x8, :lo12:.L__const.grayscale_image_3c.scale
	ldr	x9, [x8]
	stur	x9, [x29, #-24]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-16]
	stur	wzr, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-4]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	movi	d0, #0000000000000000
	stur	s0, [x29, #-28]
	stur	wzr, [x29, #-12]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-12]
	subs	w8, w8, #3
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldursw	x10, [x29, #-12]
	sub	x9, x29, #24
	ldr	s0, [x9, x10, lsl #2]
	str	s0, [sp, #4]                    // 4-byte Folded Spill
	ldur	w1, [x29, #-4]
	ldur	w2, [x29, #-8]
	ldur	w3, [x29, #-12]
	ldr	q0, [x8]
	add	x0, sp, #16
	str	q0, [sp, #16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #32]
	bl	get_pixel
	fmov	s1, s0
	ldr	s0, [sp, #4]                    // 4-byte Folded Reload
	ldur	s2, [x29, #-28]
	fmadd	s0, s0, s1, s2
	stur	s0, [x29, #-28]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-28]
	ldr	x9, [x11, #16]
	ldr	w12, [x11, #4]
	mov	w10, wzr
	mul	w10, w10, w12
	ldr	w12, [x11, #8]
	mul	w10, w10, w12
	ldr	w12, [x11, #8]
	ldur	w13, [x29, #-8]
	mul	w12, w12, w13
	add	w10, w10, w12
	ldur	w12, [x29, #-4]
	add	w10, w10, w12
	str	w8, [x9, w10, sxtw #2]
	ldur	w8, [x29, #-28]
	ldr	x9, [x11, #16]
	ldr	w12, [x11, #4]
	mov	w10, #1
	mul	w10, w10, w12
	ldr	w12, [x11, #8]
	mul	w10, w10, w12
	ldr	w12, [x11, #8]
	ldur	w13, [x29, #-8]
	mul	w12, w12, w13
	add	w10, w10, w12
	ldur	w12, [x29, #-4]
	add	w10, w10, w12
	str	w8, [x9, w10, sxtw #2]
	ldur	w8, [x29, #-28]
	ldr	x9, [x11, #16]
	ldr	w12, [x11, #4]
	mov	w10, #2
	mul	w10, w10, w12
	ldr	w12, [x11, #8]
	mul	w10, w10, w12
	ldr	w11, [x11, #8]
	ldur	w12, [x29, #-8]
	mul	w11, w11, w12
	add	w10, w10, w11
	ldur	w11, [x29, #-4]
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_1
.LBB0_12:
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	grayscale_image_3c, .Lfunc_end0-grayscale_image_3c
                                        // -- End function
	.type	.L__const.grayscale_image_3c.scale,@object // @__const.grayscale_image_3c.scale
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.grayscale_image_3c.scale:
	.word	0x3e991687                      // float 0.298999995
	.word	0x3f1645a2                      // float 0.587000012
	.word	0x3de978d5                      // float 0.114
	.size	.L__const.grayscale_image_3c.scale, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym get_pixel