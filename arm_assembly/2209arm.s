	.text
	.p2align	2                               // -- Begin function stbi__gif_parse_colortable
	.type	stbi__gif_parse_colortable,@function
stbi__gif_parse_colortable:             // @stbi__gif_parse_colortable
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	str	w3, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	stbi__get8
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	add	x8, x8, x9, lsl #4
	str	w0, [x8, #8]
	ldur	x0, [x29, #-8]
	bl	stbi__get8
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	add	x8, x8, x9, lsl #4
	str	w0, [x8, #4]
	ldur	x0, [x29, #-8]
	bl	stbi__get8
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	lsl	x9, x9, #4
	str	w0, [x8, x9]
	ldr	w10, [sp, #8]
	ldr	w11, [sp, #4]
	mov	w9, #255
	mov	w8, wzr
	subs	w10, w10, w11
	csel	w8, w8, w9, eq
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #4]
	add	x9, x9, x10, lsl #4
	str	w8, [x9, #12]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__gif_parse_colortable, .Lfunc_end0-stbi__gif_parse_colortable
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__gif_parse_colortable
	.addrsig_sym stbi__get8