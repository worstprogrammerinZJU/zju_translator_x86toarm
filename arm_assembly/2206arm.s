	.text
	.p2align	2                               // -- Begin function stbi__gif_info_raw
	.type	stbi__gif_info_raw,@function
stbi__gif_info_raw:                     // @stbi__gif_info_raw
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	str	x3, [sp, #8]
	mov	w0, #8
	bl	stbi__malloc
	str	x0, [sp]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp]
	ldr	x2, [sp, #8]
	mov	w3, #1
	bl	stbi__gif_header
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp]
	bl	STBI_FREE
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_2:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp]
	ldr	w8, [x8]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp]
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	b	.LBB0_6
.LBB0_6:
	ldr	x0, [sp]
	bl	STBI_FREE
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__gif_info_raw, .Lfunc_end0-stbi__gif_info_raw
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__gif_info_raw
	.addrsig_sym stbi__malloc
	.addrsig_sym stbi__gif_header
	.addrsig_sym STBI_FREE
	.addrsig_sym stbi__rewind