	.text
	.globl	tile_data                       // -- Begin function tile_data
	.p2align	2
	.type	tile_data,@function
tile_data:                              // @tile_data
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	stur	w2, [x29, #-8]
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	mov	w1, #40
	bl	calloc
	stur	x0, [x29, #-16]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-4]
	ldur	w10, [x29, #-4]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	xzr, [sp, #64]
	ldr	w9, [x8]
	ldur	w10, [x29, #-4]
	sdiv	w9, w9, w10
	ldur	w10, [x29, #-8]
	mul	w9, w9, w10
	str	w9, [sp, #32]
	ldr	w9, [x8, #4]
	ldur	w10, [x29, #-4]
	sdiv	w9, w9, w10
	ldur	w10, [x29, #-8]
	mul	w9, w9, w10
	str	w9, [sp, #36]
	ldr	w8, [x8, #8]
	str	w8, [sp, #40]
	ldr	w8, [sp, #32]
	ldr	w9, [sp, #36]
	mul	w8, w8, w9
	mov	w9, #3
	mul	w8, w8, w9
	str	w8, [sp, #44]
	ldr	w0, [sp, #40]
	mov	w1, #8
	bl	calloc
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [sp, #48]
	ldr	w0, [x8, #24]
	bl	copy_matrix
	str	w0, [sp, #56]
	stur	wzr, [x29, #-24]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-24]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	w9, [x29, #-20]
	ldur	w11, [x29, #-4]
	sdiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w9, w9, w10
	ldr	w10, [x8]
	mul	w9, w9, w10
	ldur	w10, [x29, #-4]
	sdiv	w9, w9, w10
	ldr	w10, [sp, #32]
	ldr	w11, [x8]
	ldur	w12, [x29, #-4]
	sdiv	w11, w11, w12
	subs	w10, w10, w11
	mov	w11, #2
	sdiv	w10, w10, w11
	subs	w9, w9, w10
	str	w9, [sp, #28]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-4]
	sdiv	w9, w9, w10
	ldr	w10, [x8, #4]
	mul	w9, w9, w10
	ldur	w10, [x29, #-4]
	sdiv	w9, w9, w10
	ldr	w10, [sp, #36]
	ldr	w12, [x8, #4]
	ldur	w13, [x29, #-4]
	sdiv	w12, w12, w13
	subs	w10, w10, w12
	sdiv	w10, w10, w11
	subs	w9, w9, w10
	str	w9, [sp, #24]
	ldr	w0, [x8]
	ldr	w1, [x8, #4]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-24]
	ldr	w3, [x8, x9, lsl #2]
	mov	w2, #3
	bl	float_to_image
	str	w0, [sp, #20]
	ldr	w0, [sp, #20]
	ldr	w1, [sp, #28]
	ldr	w2, [sp, #24]
	ldr	w3, [sp, #32]
	ldr	w4, [sp, #36]
	bl	crop_image
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #48]
	ldursw	x10, [x29, #-24]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	mov	x10, #40
	mul	x9, x9, x10
	add	x0, x8, x9
	add	x1, sp, #32
	mov	x2, #40
	bl	memcpy
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_8:
	ldur	x0, [x29, #-16]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	tile_data, .Lfunc_end0-tile_data
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym copy_matrix
	.addrsig_sym float_to_image
	.addrsig_sym crop_image