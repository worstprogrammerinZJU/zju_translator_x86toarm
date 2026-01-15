	.text
	.p2align	2                               // -- Begin function stbi__free_jpeg_components
	.type	stbi__free_jpeg_components,@function
stbi__free_jpeg_components:             // @stbi__free_jpeg_components
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	mov	x10, #40
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	x8, [x8, #32]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	mov	x10, #40
	str	x10, [sp, #16]                  // 8-byte Folded Spill
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	x0, [x8, #32]
	bl	STBI_FREE
	ldr	x10, [sp, #16]                  // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	mul	x9, x9, x10
	add	x8, x8, x9
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #32]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	mul	x9, x9, x10
	add	x8, x8, x9
	str	xzr, [x8, #24]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	mov	x10, #40
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	mov	x10, #40
	str	x10, [sp, #8]                   // 8-byte Folded Spill
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	x0, [x8, #16]
	bl	STBI_FREE
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	mul	x9, x9, x10
	add	x8, x8, x9
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	mul	x9, x9, x10
	add	x8, x8, x9
	str	xzr, [x8, #8]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	mov	x10, #40
	mul	x9, x9, x10
	ldr	x8, [x8, x9]
	cbz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	mov	x10, #40
	str	x10, [sp]                       // 8-byte Folded Spill
	mul	x9, x9, x10
	ldr	x0, [x8, x9]
	bl	STBI_FREE
	ldr	x10, [sp]                       // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldursw	x8, [x29, #-20]
	mul	x10, x8, x10
	mov	x8, xzr
	str	x8, [x9, x10]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_10:
	ldur	w0, [x29, #-16]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__free_jpeg_components, .Lfunc_end0-stbi__free_jpeg_components
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__free_jpeg_components
	.addrsig_sym STBI_FREE