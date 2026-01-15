	.text
	.p2align	2                               // -- Begin function stbi__setup_jpeg
	.type	stbi__setup_jpeg,@function
stbi__setup_jpeg:                       // @stbi__setup_jpeg
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	adrp	x8, stbi__idct_block
	ldr	x8, [x8, :lo12:stbi__idct_block]
	ldr	x9, [sp, #8]
	str	x8, [x9, #16]
	adrp	x8, stbi__YCbCr_to_RGB_row
	ldr	x8, [x8, :lo12:stbi__YCbCr_to_RGB_row]
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	adrp	x8, stbi__resample_row_hv_2
	ldr	x8, [x8, :lo12:stbi__resample_row_hv_2]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbi__setup_jpeg, .Lfunc_end0-stbi__setup_jpeg
                                        // -- End function
	.type	stbi__idct_block,@object        // @stbi__idct_block
	.bss
	.globl	stbi__idct_block
	.p2align	3
stbi__idct_block:
	.xword	0
	.size	stbi__idct_block, 8
	.type	stbi__YCbCr_to_RGB_row,@object  // @stbi__YCbCr_to_RGB_row
	.globl	stbi__YCbCr_to_RGB_row
	.p2align	3
stbi__YCbCr_to_RGB_row:
	.xword	0
	.size	stbi__YCbCr_to_RGB_row, 8
	.type	stbi__resample_row_hv_2,@object // @stbi__resample_row_hv_2
	.globl	stbi__resample_row_hv_2
	.p2align	3
stbi__resample_row_hv_2:
	.xword	0
	.size	stbi__resample_row_hv_2, 8
	.type	stbi__YCbCr_to_RGB_simd,@object // @stbi__YCbCr_to_RGB_simd
	.globl	stbi__YCbCr_to_RGB_simd
	.p2align	3
stbi__YCbCr_to_RGB_simd:
	.xword	0
	.size	stbi__YCbCr_to_RGB_simd, 8
	.type	stbi__idct_simd,@object         // @stbi__idct_simd
	.globl	stbi__idct_simd
	.p2align	3
stbi__idct_simd:
	.xword	0
	.size	stbi__idct_simd, 8
	.type	stbi__resample_row_hv_2_simd,@object // @stbi__resample_row_hv_2_simd
	.globl	stbi__resample_row_hv_2_simd
	.p2align	3
stbi__resample_row_hv_2_simd:
	.xword	0
	.size	stbi__resample_row_hv_2_simd, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__setup_jpeg
	.addrsig_sym stbi__idct_block
	.addrsig_sym stbi__YCbCr_to_RGB_row
	.addrsig_sym stbi__resample_row_hv_2