	.text
	.p2align	2                               // -- Begin function resample_row_1
	.type	resample_row_1,@function
resample_row_1:                         // @resample_row_1
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	w3, [sp, #4]
	str	w4, [sp]
	ldur	x8, [x29, #-8]
	mov	w0, w8
	bl	STBI_NOTUSED
	ldr	x8, [sp, #8]
	mov	w0, w8
	bl	STBI_NOTUSED
	ldr	w0, [sp, #4]
	bl	STBI_NOTUSED
	ldr	w0, [sp]
	bl	STBI_NOTUSED
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	resample_row_1, .Lfunc_end0-resample_row_1
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resample_row_1
	.addrsig_sym STBI_NOTUSED