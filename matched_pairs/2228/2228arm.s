	.text
	.p2align	2                               // -- Begin function stbi__jpeg_finish
	.type	stbi__jpeg_finish,@function
stbi__jpeg_finish:                      // @stbi__jpeg_finish
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	cbz	x8, .LBB0_14
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-20]
	b	.LBB0_2
.LBB0_2:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_4 Depth 2
                                        //       Child Loop BB0_6 Depth 3
	ldur	w8, [x29, #-20]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #24]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	mov	x10, #40
	mul	x9, x9, x10
	ldr	w8, [x8, x9]
	add	w8, w8, #7
	asr	w8, w8, #3
	str	w8, [sp, #24]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #4]
	add	w8, w8, #7
	asr	w8, w8, #3
	str	w8, [sp, #20]
	stur	wzr, [x29, #-16]
	b	.LBB0_4
.LBB0_4:                                //   Parent Loop BB0_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_6 Depth 3
	ldur	w8, [x29, #-16]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=2
	stur	wzr, [x29, #-12]
	b	.LBB0_6
.LBB0_6:                                //   Parent Loop BB0_2 Depth=1
                                        //     Parent Loop BB0_4 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=3
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	mov	x11, #40
	str	x11, [sp]                       // 8-byte Folded Spill
	mul	x9, x9, x11
	add	x8, x8, x9
	ldr	x8, [x8, #8]
	ldur	w9, [x29, #-12]
	ldur	w10, [x29, #-16]
	ldur	x12, [x29, #-8]
	ldr	x12, [x12]
	ldursw	x13, [x29, #-20]
	mul	x13, x13, x11
	add	x12, x12, x13
	ldr	w12, [x12, #16]
	mul	w10, w10, w12
	add	w10, w9, w10
	mov	w9, #64
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw #1
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	ldursw	x10, [x29, #-20]
	mul	x10, x10, x11
	add	x9, x9, x10
	ldr	x9, [x9, #24]
	ldr	w1, [x8, x9, lsl #2]
	bl	stbi__jpeg_dequantize
	ldr	x11, [sp]                       // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	ldursw	x10, [x29, #-20]
	mul	x10, x10, x11
	add	x9, x9, x10
	ldr	w9, [x9, #36]
	ldur	x10, [x29, #-8]
	ldr	x10, [x10]
	ldursw	x12, [x29, #-20]
	mul	x12, x12, x11
	add	x10, x10, x12
	ldr	w10, [x10, #32]
	ldur	w12, [x29, #-16]
	mul	w10, w10, w12
	add	w9, w9, w10, lsl #3
	ldur	w10, [x29, #-12]
	add	w0, w9, w10, lsl #3
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	ldursw	x10, [x29, #-20]
	mul	x10, x10, x11
	add	x9, x9, x10
	ldr	w1, [x9, #32]
	ldr	x2, [sp, #8]
	blr	x8
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_6 Depth=3
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_6
.LBB0_9:                                //   in Loop: Header=BB0_4 Depth=2
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_4 Depth=2
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	.LBB0_4
.LBB0_11:                               //   in Loop: Header=BB0_2 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_2
.LBB0_13:
	b	.LBB0_14
.LBB0_14:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__jpeg_finish, .Lfunc_end0-stbi__jpeg_finish
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_finish
	.addrsig_sym stbi__jpeg_dequantize