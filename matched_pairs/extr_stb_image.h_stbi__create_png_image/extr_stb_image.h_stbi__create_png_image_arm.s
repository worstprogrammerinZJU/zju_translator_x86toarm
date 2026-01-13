	.text
	.p2align	2                               // -- Begin function stbi__create_png_image
	.type	stbi__create_png_image,@function
stbi__create_png_image:                 // @stbi__create_png_image
// %bb.0:
	sub	sp, sp, #256
	stp	x29, x30, [sp, #240]            // 16-byte Folded Spill
	add	x29, sp, #240
	sub	x8, x29, #64
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	str	x0, [x8, #48]
	str	x1, [x8, #40]
	stur	w2, [x29, #-28]
	stur	w3, [x29, #-32]
	stur	w4, [x29, #-36]
	stur	w5, [x29, #-40]
	stur	w6, [x29, #-44]
	ldur	w9, [x29, #-36]
	mov	w8, #2
	subs	w9, w9, #16
	csinc	w8, w8, wzr, eq
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-48]
	mul	w8, w8, w9
	stur	w8, [x29, #-52]
	ldur	w8, [x29, #-44]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #48]
	ldr	x1, [x8, #40]
	ldur	w2, [x29, #-28]
	ldur	w3, [x29, #-32]
	ldr	x9, [x8, #48]
	ldr	x9, [x9, #8]
	ldr	w4, [x9]
	ldr	x8, [x8, #48]
	ldr	x8, [x8, #8]
	ldr	w5, [x8, #4]
	ldur	w6, [x29, #-36]
	ldur	w7, [x29, #-40]
	bl	stbi__create_png_image_raw
	stur	w0, [x29, #-4]
	b	.LBB0_20
.LBB0_2:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [x8, #48]
	ldr	x9, [x9, #8]
	ldr	w0, [x9]
	ldr	x8, [x8, #48]
	ldr	x8, [x8, #8]
	ldr	w1, [x8, #4]
	ldur	w2, [x29, #-52]
	mov	w3, wzr
	bl	stbi__malloc_mad3
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8]
	stur	wzr, [x29, #-68]
	b	.LBB0_3
.LBB0_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_9 Depth 2
                                        //       Child Loop BB0_11 Depth 3
	ldur	w8, [x29, #-68]
	subs	w8, w8, #7
	b.ge	.LBB0_19
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	adrp	x9, .L__const.stbi__create_png_image.xorig
	add	x9, x9, :lo12:.L__const.stbi__create_png_image.xorig
	ldr	q0, [x9]
	sub	x13, x29, #96
	stur	q0, [x29, #-96]
	ldur	q0, [x9, #12]
	stur	q0, [x13, #12]
	adrp	x9, .L__const.stbi__create_png_image.yorig
	add	x9, x9, :lo12:.L__const.stbi__create_png_image.yorig
	ldr	q0, [x9]
	add	x10, sp, #112
	str	q0, [sp, #112]
	ldur	q0, [x9, #12]
	stur	q0, [x10, #12]
	adrp	x9, .L__const.stbi__create_png_image.xspc
	add	x9, x9, :lo12:.L__const.stbi__create_png_image.xspc
	ldr	q0, [x9]
	add	x12, sp, #80
	str	q0, [sp, #80]
	ldur	q0, [x9, #12]
	stur	q0, [x12, #12]
	adrp	x11, .L__const.stbi__create_png_image.yspc
	add	x11, x11, :lo12:.L__const.stbi__create_png_image.yspc
	ldr	q0, [x11]
	add	x9, sp, #48
	str	q0, [sp, #48]
	ldur	q0, [x11, #12]
	stur	q0, [x9, #12]
	ldr	x11, [x8, #48]
	ldr	x11, [x11, #8]
	ldr	w11, [x11]
	ldursw	x14, [x29, #-68]
	ldr	w13, [x13, x14, lsl #2]
	subs	w11, w11, w13
	ldursw	x13, [x29, #-68]
	ldr	w13, [x12, x13, lsl #2]
	add	w11, w11, w13
	subs	w11, w11, #1
	ldursw	x13, [x29, #-68]
	ldr	w12, [x12, x13, lsl #2]
	sdiv	w11, w11, w12
	str	w11, [sp, #36]
	ldr	x8, [x8, #48]
	ldr	x8, [x8, #8]
	ldr	w8, [x8, #4]
	ldursw	x11, [x29, #-68]
	ldr	w10, [x10, x11, lsl #2]
	subs	w8, w8, w10
	ldursw	x10, [x29, #-68]
	ldr	w10, [x9, x10, lsl #2]
	add	w8, w8, w10
	subs	w8, w8, #1
	ldursw	x10, [x29, #-68]
	ldr	w9, [x9, x10, lsl #2]
	sdiv	w8, w8, w9
	str	w8, [sp, #32]
	ldr	w8, [sp, #36]
	cbz	w8, .LBB0_17
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #32]
	cbz	w8, .LBB0_17
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [x8, #48]
	ldr	x9, [x9, #8]
	ldr	w9, [x9, #8]
	ldr	w10, [sp, #36]
	mul	w9, w9, w10
	ldur	w10, [x29, #-36]
	mul	w9, w9, w10
	add	w9, w9, #7
	asr	w9, w9, #3
	add	w9, w9, #1
	ldr	w10, [sp, #32]
	mul	w9, w9, w10
	str	w9, [sp, #28]
	ldr	x0, [x8, #48]
	ldr	x1, [x8, #40]
	ldur	w2, [x29, #-28]
	ldur	w3, [x29, #-32]
	ldr	w4, [sp, #36]
	ldr	w5, [sp, #32]
	ldur	w6, [x29, #-36]
	ldur	w7, [x29, #-40]
	bl	stbi__create_png_image_raw
	cbnz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8]
	bl	STBI_FREE
	stur	wzr, [x29, #-4]
	b	.LBB0_20
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	str	wzr, [sp, #40]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_11 Depth 3
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.ge	.LBB0_16
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=2
	str	wzr, [sp, #44]
	b	.LBB0_11
.LBB0_11:                               //   Parent Loop BB0_3 Depth=1
                                        //     Parent Loop BB0_9 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=3
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w9, [sp, #40]
	ldursw	x11, [x29, #-68]
	add	x10, sp, #48
	ldr	w10, [x10, x11, lsl #2]
	mul	w9, w9, w10
	ldursw	x11, [x29, #-68]
	add	x10, sp, #112
	ldr	w10, [x10, x11, lsl #2]
	add	w9, w9, w10
	str	w9, [sp, #24]
	ldr	w9, [sp, #44]
	ldursw	x11, [x29, #-68]
	add	x10, sp, #80
	ldr	w10, [x10, x11, lsl #2]
	mul	w9, w9, w10
	ldursw	x11, [x29, #-68]
	sub	x10, x29, #96
	ldr	w10, [x10, x11, lsl #2]
	add	w9, w9, w10
	str	w9, [sp, #20]
	ldr	x9, [x8]
	ldr	w10, [sp, #24]
	ldr	x11, [x8, #48]
	ldr	x11, [x11, #8]
	ldr	w11, [x11]
	mul	w10, w10, w11
	ldur	w11, [x29, #-52]
	mul	w10, w10, w11
	add	x9, x9, w10, sxtw #2
	ldr	w10, [sp, #20]
	ldur	w11, [x29, #-52]
	mul	w10, w10, w11
	add	x0, x9, w10, sxtw #2
	ldr	x8, [x8, #48]
	ldr	x8, [x8]
	ldr	w9, [sp, #40]
	ldr	w10, [sp, #36]
	mul	w9, w9, w10
	ldr	w10, [sp, #44]
	add	w9, w9, w10
	ldur	w10, [x29, #-52]
	mul	w9, w9, w10
	add	x1, x8, w9, sxtw #2
	ldur	w2, [x29, #-52]
	bl	memcpy
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=3
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB0_11
.LBB0_14:                               //   in Loop: Header=BB0_9 Depth=2
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	.LBB0_9
.LBB0_16:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #48]
	ldr	x0, [x8]
	bl	STBI_FREE
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldrsw	x10, [sp, #28]
	ldr	x8, [x9, #40]
	add	x8, x8, x10, lsl #2
	str	x8, [x9, #40]
	ldr	w9, [sp, #28]
	ldur	w8, [x29, #-28]
	subs	w8, w8, w9
	stur	w8, [x29, #-28]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-68]
	add	w8, w8, #1
	stur	w8, [x29, #-68]
	b	.LBB0_3
.LBB0_19:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x9]
	ldr	x9, [x9, #48]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_20:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #240]            // 16-byte Folded Reload
	add	sp, sp, #256
	ret
.Lfunc_end0:
	.size	stbi__create_png_image, .Lfunc_end0-stbi__create_png_image
                                        // -- End function
	.type	.L__const.stbi__create_png_image.xorig,@object // @__const.stbi__create_png_image.xorig
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.stbi__create_png_image.xorig:
	.word	0                               // 0x0
	.word	4                               // 0x4
	.word	0                               // 0x0
	.word	2                               // 0x2
	.word	0                               // 0x0
	.word	1                               // 0x1
	.word	0                               // 0x0
	.size	.L__const.stbi__create_png_image.xorig, 28
	.type	.L__const.stbi__create_png_image.yorig,@object // @__const.stbi__create_png_image.yorig
	.p2align	2
.L__const.stbi__create_png_image.yorig:
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	4                               // 0x4
	.word	0                               // 0x0
	.word	2                               // 0x2
	.word	0                               // 0x0
	.word	1                               // 0x1
	.size	.L__const.stbi__create_png_image.yorig, 28
	.type	.L__const.stbi__create_png_image.xspc,@object // @__const.stbi__create_png_image.xspc
	.p2align	2
.L__const.stbi__create_png_image.xspc:
	.word	8                               // 0x8
	.word	8                               // 0x8
	.word	4                               // 0x4
	.word	4                               // 0x4
	.word	2                               // 0x2
	.word	2                               // 0x2
	.word	1                               // 0x1
	.size	.L__const.stbi__create_png_image.xspc, 28
	.type	.L__const.stbi__create_png_image.yspc,@object // @__const.stbi__create_png_image.yspc
	.p2align	2
.L__const.stbi__create_png_image.yspc:
	.word	8                               // 0x8
	.word	8                               // 0x8
	.word	8                               // 0x8
	.word	4                               // 0x4
	.word	4                               // 0x4
	.word	2                               // 0x2
	.word	2                               // 0x2
	.size	.L__const.stbi__create_png_image.yspc, 28
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__create_png_image
	.addrsig_sym stbi__create_png_image_raw
	.addrsig_sym stbi__malloc_mad3
	.addrsig_sym STBI_FREE
	.addrsig_sym memcpy