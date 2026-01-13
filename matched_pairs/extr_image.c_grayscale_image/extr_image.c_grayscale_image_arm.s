	.text
	.globl	grayscale_image                 // -- Begin function grayscale_image
	.p2align	2
	.type	grayscale_image,@function
grayscale_image:                        // @grayscale_image
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldr	w8, [x0]
	subs	w8, w8, #3
	cset	w8, eq
	mov	w9, #1
	str	w9, [sp, #28]                   // 4-byte Folded Spill
	and	w0, w8, #0x1
	bl	assert
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	ldr	w0, [x9, #4]
	ldr	w1, [x9, #8]
	bl	make_image
	adrp	x8, .L__const.grayscale_image.scale
	add	x8, x8, :lo12:.L__const.grayscale_image.scale
	ldr	x9, [x8]
	stur	x9, [x29, #-24]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-16]
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w9, [x9]
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
	ldr	w9, [x9, #8]
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
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
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
	add	x0, sp, #32
	str	q0, [sp, #32]
	ldr	x8, [x8, #16]
	str	x8, [sp, #48]
	bl	get_pixel
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	fmov	s1, s0
	ldr	s0, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [x8, #16]
	ldur	w9, [x29, #-4]
	ldr	w10, [x10, #4]
	ldur	w11, [x29, #-8]
	mul	w10, w10, w11
	add	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldr	s2, [x8]
	fmadd	s0, s0, s1, s2
	str	s0, [x8]
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
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	grayscale_image, .Lfunc_end0-grayscale_image
                                        // -- End function
	.type	.L__const.grayscale_image.scale,@object // @__const.grayscale_image.scale
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.grayscale_image.scale:
	.word	0x3e991687                      // float 0.298999995
	.word	0x3f1645a2                      // float 0.587000012
	.word	0x3de978d5                      // float 0.114
	.size	.L__const.grayscale_image.scale, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym make_image
	.addrsig_sym get_pixel