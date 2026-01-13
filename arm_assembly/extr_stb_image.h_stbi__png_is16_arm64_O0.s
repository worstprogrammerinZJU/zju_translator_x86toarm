	.text
	.p2align	2                               // -- Begin function stbi__png_is16
	.type	stbi__png_is16,@function
stbi__png_is16:                         // @stbi__png_is16
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	mov	x0, sp
	str	x8, [sp, #8]
	mov	x3, xzr
	mov	x1, x3
	mov	x2, x3
	bl	stbi__png_info_raw
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldr	w8, [sp]
	subs	w8, w8, #16
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__png_is16, .Lfunc_end0-stbi__png_is16
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__png_is16
	.addrsig_sym stbi__png_info_raw
	.addrsig_sym stbi__rewind