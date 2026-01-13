	.text
	.p2align	2                               // -- Begin function stbi__YCbCr_to_RGB_row
	.type	stbi__YCbCr_to_RGB_row,@function
stbi__YCbCr_to_RGB_row:                 // @stbi__YCbCr_to_RGB_row
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	w4, [x29, #-36]
	stur	w5, [x29, #-40]
	stur	wzr, [x29, #-44]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-44]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ge	.LBB0_19
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-44]
	ldr	w8, [x8, x9, lsl #2]
	lsl	w8, w8, #20
	add	w8, w8, #128, lsl #12           // =524288
	stur	w8, [x29, #-48]
	ldur	x8, [x29, #-32]
	ldursw	x9, [x29, #-44]
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #128
	str	w8, [sp, #48]
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-44]
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #128
	str	w8, [sp, #44]
	ldur	w8, [x29, #-48]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldr	w8, [sp, #48]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	mov	w8, #29884
	movk	w8, #16307, lsl #16
	fmov	s0, w8
	bl	stbi__float2fixed
	ldr	w9, [sp, #12]                   // 4-byte Folded Reload
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	mul	w9, w9, w0
	add	w8, w8, w9
	stur	w8, [x29, #-52]
	ldur	w8, [x29, #-48]
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	ldr	w8, [sp, #48]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	mov	w8, #53729
	movk	w8, #16182, lsl #16
	fmov	s0, w8
	bl	stbi__float2fixed
	ldr	w9, [sp, #20]                   // 4-byte Folded Reload
	ldr	w8, [sp, #24]                   // 4-byte Folded Reload
	mneg	w9, w0, w9
	add	w8, w8, w9
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	ldr	w8, [sp, #44]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	mov	w8, #13086
	movk	w8, #16048, lsl #16
	fmov	s0, w8
	bl	stbi__float2fixed
	ldr	w9, [sp, #28]                   // 4-byte Folded Reload
	ldr	w8, [sp, #32]                   // 4-byte Folded Reload
	mneg	w9, w0, w9
	and	w9, w9, #0xffff0000
	add	w8, w8, w9
	str	w8, [sp, #56]
	ldur	w8, [x29, #-48]
	str	w8, [sp, #40]                   // 4-byte Folded Spill
	ldr	w8, [sp, #44]
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	mov	w8, #53477
	movk	w8, #16354, lsl #16
	fmov	s0, w8
	bl	stbi__float2fixed
	ldr	w9, [sp, #36]                   // 4-byte Folded Reload
	ldr	w8, [sp, #40]                   // 4-byte Folded Reload
	mul	w9, w9, w0
	add	w8, w8, w9
	str	w8, [sp, #52]
	ldur	w8, [x29, #-52]
	asr	w8, w8, #20
	stur	w8, [x29, #-52]
	ldr	w8, [sp, #56]
	asr	w8, w8, #20
	str	w8, [sp, #56]
	ldr	w8, [sp, #52]
	asr	w8, w8, #20
	str	w8, [sp, #52]
	ldur	w8, [x29, #-52]
	subs	w8, w8, #255
	b.ls	.LBB0_7
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-52]
	subs	w8, w8, #0
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-52]
	b	.LBB0_6
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #255
	stur	w8, [x29, #-52]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #56]
	subs	w8, w8, #255
	b.ls	.LBB0_12
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #56]
	subs	w8, w8, #0
	b.ge	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #56]
	b	.LBB0_11
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #255
	str	w8, [sp, #56]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]
	subs	w8, w8, #255
	b.ls	.LBB0_17
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]
	subs	w8, w8, #0
	b.ge	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #52]
	b	.LBB0_16
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #255
	str	w8, [sp, #52]
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-52]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldr	w8, [sp, #56]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #4]
	ldr	w8, [sp, #52]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	ldur	x9, [x29, #-8]
	mov	w8, #255
	str	w8, [x9, #12]
	ldursw	x9, [x29, #-40]
	ldur	x8, [x29, #-8]
	add	x8, x8, x9, lsl #2
	stur	x8, [x29, #-8]
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_1
.LBB0_19:
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	stbi__YCbCr_to_RGB_row, .Lfunc_end0-stbi__YCbCr_to_RGB_row
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__YCbCr_to_RGB_row
	.addrsig_sym stbi__float2fixed