	.text
	.p2align	2                               // -- Begin function stbi__expand_png_palette
	.type	stbi__expand_png_palette,@function
stbi__expand_png_palette:               // @stbi__expand_png_palette
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	stur	w3, [x29, #-32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldr	x9, [x9, #8]
	mul	x8, x8, x9
	str	x8, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x0, [sp, #32]
	ldur	w1, [x29, #-32]
	mov	w2, wzr
	bl	stbi__malloc_mad2
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_14
.LBB0_2:
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]
	ldur	w8, [x29, #-32]
	subs	w8, w8, #3
	b.ne	.LBB0_8
	b	.LBB0_3
.LBB0_3:
	str	xzr, [sp, #40]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.hs	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #40]
	ldr	w8, [x8, x9, lsl #2]
	lsl	w8, w8, #2
	str	w8, [sp, #4]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #4]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #4]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [sp, #24]
	str	w8, [x9, #4]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #4]
	add	w9, w9, #2
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	ldr	x8, [sp, #24]
	add	x8, x8, #12
	str	x8, [sp, #24]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #1
	str	x8, [sp, #40]
	b	.LBB0_4
.LBB0_7:
	b	.LBB0_13
.LBB0_8:
	str	xzr, [sp, #40]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.hs	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #40]
	ldr	w8, [x8, x9, lsl #2]
	lsl	w8, w8, #2
	str	w8, [sp]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [sp, #24]
	str	w8, [x9, #4]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp]
	add	w9, w9, #2
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp]
	add	w9, w9, #3
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [sp, #24]
	str	w8, [x9, #12]
	ldr	x8, [sp, #24]
	add	x8, x8, #16
	str	x8, [sp, #24]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #1
	str	x8, [sp, #40]
	b	.LBB0_9
.LBB0_12:
	b	.LBB0_13
.LBB0_13:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	STBI_FREE
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldur	w0, [x29, #-28]
	bl	STBI_NOTUSED
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_14
.LBB0_14:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	stbi__expand_png_palette, .Lfunc_end0-stbi__expand_png_palette
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"outofmem"
	.size	.L.str, 9
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Out of memory"
	.size	.L.str.1, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__expand_png_palette
	.addrsig_sym stbi__malloc_mad2
	.addrsig_sym stbi__err
	.addrsig_sym STBI_FREE
	.addrsig_sym STBI_NOTUSED