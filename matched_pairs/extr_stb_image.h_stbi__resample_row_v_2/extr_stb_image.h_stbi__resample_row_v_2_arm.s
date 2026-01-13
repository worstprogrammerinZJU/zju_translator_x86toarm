	.text
	.p2align	2                               // -- Begin function stbi__resample_row_v_2
	.type	stbi__resample_row_v_2,@function
stbi__resample_row_v_2:                 // @stbi__resample_row_v_2
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	w3, [sp, #20]
	str	w4, [sp, #16]
	ldr	w0, [sp, #16]
	bl	STBI_NOTUSED
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #12]
	ldr	w9, [x8, x9, lsl #2]
	mov	w8, #3
	mul	w8, w8, w9
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #12]
	ldr	w9, [x9, x10, lsl #2]
	add	w8, w8, w9
	add	w0, w8, #2
	bl	stbi__div4
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	str	w0, [x8, x9, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__resample_row_v_2, .Lfunc_end0-stbi__resample_row_v_2
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__resample_row_v_2
	.addrsig_sym STBI_NOTUSED
	.addrsig_sym stbi__div4