	.text
	.p2align	2                               // -- Begin function stbi__de_iphone
	.type	stbi__de_iphone,@function
stbi__de_iphone:                        // @stbi__de_iphone
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	mul	x8, x8, x9
	str	x8, [sp, #32]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #16]
	subs	w8, w8, #3
	b.ne	.LBB0_6
	b	.LBB0_1
.LBB0_1:
	stur	xzr, [x29, #-24]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ge	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	ldr	x8, [sp, #24]
	add	x8, x8, #12
	str	x8, [sp, #24]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	ldur	x8, [x29, #-24]
	add	x8, x8, #1
	stur	x8, [x29, #-24]
	b	.LBB0_2
.LBB0_5:
	b	.LBB0_21
.LBB0_6:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #16]
	subs	w8, w8, #4
	cset	w8, eq
	and	w0, w8, #0x1
	bl	STBI_ASSERT
	adrp	x8, stbi__unpremultiply_on_load
	ldr	x8, [x8, :lo12:stbi__unpremultiply_on_load]
	cbz	x8, .LBB0_15
	b	.LBB0_7
.LBB0_7:
	stur	xzr, [x29, #-24]
	b	.LBB0_8
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ge	.LBB0_14
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #12]
	str	w8, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #16]
	cbz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #16]
	mov	w9, #2
	sdiv	w8, w8, w9
	str	w8, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #8]
	mov	w9, #255
	mul	w8, w8, w9
	ldr	w10, [sp, #8]
	add	w8, w8, w10
	ldr	w10, [sp, #16]
	sdiv	w8, w8, w10
	ldr	x10, [sp, #24]
	str	w8, [x10]
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #4]
	mul	w8, w8, w9
	ldr	w10, [sp, #8]
	add	w8, w8, w10
	ldr	w10, [sp, #16]
	sdiv	w8, w8, w10
	ldr	x10, [sp, #24]
	str	w8, [x10, #4]
	ldr	w8, [sp, #12]
	mul	w8, w8, w9
	ldr	w9, [sp, #8]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	sdiv	w8, w8, w9
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	b	.LBB0_12
.LBB0_11:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #16
	str	x8, [sp, #24]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-24]
	add	x8, x8, #1
	stur	x8, [x29, #-24]
	b	.LBB0_8
.LBB0_14:
	b	.LBB0_20
.LBB0_15:
	stur	xzr, [x29, #-24]
	b	.LBB0_16
.LBB0_16:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ge	.LBB0_19
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_16 Depth=1
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #4]
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	ldr	x8, [sp, #24]
	add	x8, x8, #16
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_16 Depth=1
	ldur	x8, [x29, #-24]
	add	x8, x8, #1
	stur	x8, [x29, #-24]
	b	.LBB0_16
.LBB0_19:
	b	.LBB0_20
.LBB0_20:
	b	.LBB0_21
.LBB0_21:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	stbi__de_iphone, .Lfunc_end0-stbi__de_iphone
                                        // -- End function
	.type	stbi__unpremultiply_on_load,@object // @stbi__unpremultiply_on_load
	.bss
	.globl	stbi__unpremultiply_on_load
	.p2align	3
stbi__unpremultiply_on_load:
	.xword	0                               // 0x0
	.size	stbi__unpremultiply_on_load, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__de_iphone
	.addrsig_sym STBI_ASSERT
	.addrsig_sym stbi__unpremultiply_on_load