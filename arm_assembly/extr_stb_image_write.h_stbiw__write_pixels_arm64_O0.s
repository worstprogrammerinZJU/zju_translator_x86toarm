	.text
	.p2align	2                               // -- Begin function stbiw__write_pixels
	.type	stbiw__write_pixels,@function
stbiw__write_pixels:                    // @stbiw__write_pixels
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	ldr	w9, [x29, #16]
	ldr	w8, [x29, #24]
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	stur	w4, [x29, #-24]
	stur	w5, [x29, #-28]
	str	x6, [sp, #40]
	str	w7, [sp, #36]
	str	w9, [sp, #32]
	str	w8, [sp, #28]
	str	wzr, [sp, #24]
	ldur	w8, [x29, #-24]
	subs	w8, w8, #0
	b.gt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_15
.LBB0_2:
	adrp	x8, stbi__flip_vertically_on_write
	ldr	x8, [x8, :lo12:stbi__flip_vertically_on_write]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w9, [x29, #-16]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-16]
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	mov	w8, #-1
	str	w8, [sp, #12]
	ldur	w8, [x29, #-24]
	subs	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_7
.LBB0_6:
	ldur	w8, [x29, #-24]
	str	w8, [sp, #12]
	str	wzr, [sp, #16]
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_8
.LBB0_8:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_10 Depth 2
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.eq	.LBB0_15
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	str	wzr, [sp, #20]
	b	.LBB0_10
.LBB0_10:                               //   Parent Loop BB0_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #16]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	ldr	w10, [sp, #20]
	add	w9, w9, w10
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw
	str	x8, [sp]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-28]
	ldr	w3, [sp, #36]
	ldr	w4, [sp, #28]
	ldr	x5, [sp]
	bl	stbiw__write_pixel
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_10
.LBB0_13:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	w0, [x9]
	ldr	w2, [sp, #32]
	add	x1, sp, #24
	blr	x8
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	w9, [x29, #-16]
	ldr	w8, [sp, #16]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	.LBB0_8
.LBB0_15:
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	stbiw__write_pixels, .Lfunc_end0-stbiw__write_pixels
                                        // -- End function
	.type	stbi__flip_vertically_on_write,@object // @stbi__flip_vertically_on_write
	.bss
	.globl	stbi__flip_vertically_on_write
	.p2align	3
stbi__flip_vertically_on_write:
	.xword	0                               // 0x0
	.size	stbi__flip_vertically_on_write, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__write_pixels
	.addrsig_sym stbiw__write_pixel
	.addrsig_sym stbi__flip_vertically_on_write