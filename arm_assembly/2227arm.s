	.text
	.p2align	2                               // -- Begin function stbi__jpeg_dequantize
	.type	stbi__jpeg_dequantize,@function
stbi__jpeg_dequantize:                  // @stbi__jpeg_dequantize
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #64
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldrsh	w10, [x8, x9, lsl #1]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #12]
	add	x9, x8, x9, lsl #1
	ldrsh	w8, [x9]
	mul	w8, w8, w10
	strh	w8, [x9]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__jpeg_dequantize, .Lfunc_end0-stbi__jpeg_dequantize
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_dequantize