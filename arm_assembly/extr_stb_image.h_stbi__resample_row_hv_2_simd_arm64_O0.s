	.text
	.p2align	2                               // -- Begin function stbi__resample_row_hv_2_simd
	.type	stbi__resample_row_hv_2_simd,@function
stbi__resample_row_hv_2_simd:           // @stbi__resample_row_hv_2_simd
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	w3, [sp, #28]
	str	w4, [sp, #24]
	str	wzr, [sp, #20]
	ldr	w8, [sp, #28]
	subs	w8, w8, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-24]
	ldr	w9, [x8]
	mov	w8, #3
	mul	w8, w8, w9
	ldr	x9, [sp, #32]
	ldr	w9, [x9]
	add	w8, w8, w9
	add	w0, w8, #2
	bl	stbi__div4
	ldur	x8, [x29, #-16]
	str	w0, [x8, #4]
	ldur	x8, [x29, #-16]
	str	w0, [x8]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_11
.LBB0_2:
	ldur	x8, [x29, #-24]
	ldr	w9, [x8]
	mov	w8, #3
	mul	w8, w8, w9
	ldr	x9, [sp, #32]
	ldr	w9, [x9]
	add	w8, w8, w9
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #28]
	subs	w9, w9, #1
	and	w9, w9, #0xfffffff8
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #20]
	add	w9, w9, #7
	ldr	w9, [x8, w9, sxtw #2]
	mov	w8, #3
	mul	w8, w8, w9
	ldr	x9, [sp, #32]
	ldr	w10, [sp, #20]
	add	w10, w10, #7
	ldr	w9, [x9, w10, sxtw #2]
	add	w8, w8, w9
	str	w8, [sp, #12]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #8
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_6:
	ldr	w8, [sp, #12]
	str	w8, [sp, #16]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #20]
	ldr	w9, [x8, x9, lsl #2]
	mov	w8, #3
	mul	w9, w8, w9
	ldr	x10, [sp, #32]
	ldrsw	x11, [sp, #20]
	ldr	w10, [x10, x11, lsl #2]
	add	w9, w9, w10
	str	w9, [sp, #12]
	ldr	w9, [sp, #12]
	mul	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	add	w0, w8, #8
	bl	stbi__div16
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #20]
	lsl	w9, w9, #1
	str	w0, [x8, w9, sxtw #2]
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #12]
	str	w8, [sp, #16]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #20]
	ldr	w9, [x8, x9, lsl #2]
	mov	w8, #3
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	mul	w9, w8, w9
	ldr	x10, [sp, #32]
	ldrsw	x11, [sp, #20]
	ldr	w10, [x10, x11, lsl #2]
	add	w9, w9, w10
	str	w9, [sp, #12]
	ldr	w9, [sp, #16]
	mul	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w8, w8, w9
	add	w0, w8, #8
	bl	stbi__div16
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldr	w10, [sp, #20]
	lsl	w10, w10, #1
	subs	w10, w10, #1
	str	w0, [x9, w10, sxtw #2]
	ldr	w9, [sp, #12]
	mul	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	add	w0, w8, #8
	bl	stbi__div16
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #20]
	lsl	w9, w9, #1
	str	w0, [x8, w9, sxtw #2]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_7
.LBB0_10:
	ldr	w8, [sp, #12]
	add	w0, w8, #2
	bl	stbi__div4
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #28]
	lsl	w9, w9, #1
	subs	w9, w9, #1
	str	w0, [x8, w9, sxtw #2]
	ldr	w0, [sp, #24]
	bl	STBI_NOTUSED
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_11
.LBB0_11:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	stbi__resample_row_hv_2_simd, .Lfunc_end0-stbi__resample_row_hv_2_simd
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__resample_row_hv_2_simd
	.addrsig_sym stbi__div4
	.addrsig_sym stbi__div16
	.addrsig_sym STBI_NOTUSED