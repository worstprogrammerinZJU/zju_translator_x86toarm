	.text
	.p2align	2                               // -- Begin function stbi__bmp_info
	.type	stbi__bmp_info,@function
stbi__bmp_info:                         // @stbi__bmp_info
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	mov	x1, sp
	mov	w8, #255
	str	w8, [sp]
	ldur	x0, [x29, #-16]
	bl	stbi__bmp_parse_header
	str	x0, [sp, #16]
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_2:
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #32]
	str	w8, [x9]
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x10, [sp, #8]
	mov	w9, #3
	mov	w8, #4
	subs	x10, x10, #0
	csel	w8, w8, w9, ne
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	.LBB0_8
.LBB0_8:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	stbi__bmp_info, .Lfunc_end0-stbi__bmp_info
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__bmp_info
	.addrsig_sym stbi__bmp_parse_header
	.addrsig_sym stbi__rewind