	.text
	.p2align	2                               // -- Begin function stbi__load_gif_main
	.type	stbi__load_gif_main,@function
stbi__load_gif_main:                    // @stbi__load_gif_main
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	stur	x5, [x29, #-56]
	stur	w6, [x29, #-60]
	ldur	x0, [x29, #-16]
	bl	stbi__gif_test
	cbz	x0, .LBB0_25
	b	.LBB0_1
.LBB0_1:
	mov	w1, wzr
	str	wzr, [sp, #64]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #56]
	str	xzr, [sp, #48]
	str	xzr, [sp, #40]
	add	x0, sp, #16
	mov	w2, #24
	bl	memset
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-24]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-16]
	ldur	x2, [x29, #-56]
	ldur	w3, [x29, #-60]
	ldr	x4, [sp, #40]
	add	x1, sp, #16
	bl	stbi__gif_load_next
	str	x0, [sp, #56]
	ldr	x8, [sp, #56]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #56]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #56]
	cbz	x8, .LBB0_19
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-32]
	str	w8, [x9]
	ldr	w8, [sp, #20]
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	ldr	w8, [sp, #64]
	add	w8, w8, #1
	str	w8, [sp, #64]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #20]
	mul	w8, w8, w9
	lsl	w8, w8, #2
	str	w8, [sp, #12]
	ldr	x8, [sp, #48]
	cbz	x8, .LBB0_11
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x0, [sp, #48]
	ldr	w8, [sp, #64]
	ldr	w9, [sp, #12]
	mul	w1, w8, w9
	bl	STBI_REALLOC
	str	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x0, [x8]
	ldrsw	x9, [sp, #64]
	mov	x8, #4
	mul	x8, x8, x9
	mov	w1, w8
	bl	STBI_REALLOC
	ldur	x8, [x29, #-24]
	str	x0, [x8]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_14
.LBB0_11:                               //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #64]
	ldr	w9, [sp, #12]
	mul	w0, w8, w9
	bl	stbi__malloc
	str	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_4 Depth=1
	ldrsw	x8, [sp, #64]
	lsl	x8, x8, #2
	mov	w0, w8
	bl	stbi__malloc
	ldur	x8, [x29, #-24]
	str	x0, [x8]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #48]
	ldr	w9, [sp, #64]
	subs	w9, w9, #1
	ldr	w10, [sp, #12]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw
	ldr	x1, [sp, #56]
	ldr	w2, [sp, #12]
	bl	memcpy
	ldr	w8, [sp, #64]
	subs	w8, w8, #2
	b.lt	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #48]
	ldr	w10, [sp, #12]
	mov	w9, #2
	mul	w10, w9, w10
                                        // implicit-def: $x9
	mov	w9, w10
	sxtw	x9, w9
	subs	x8, x8, x9
	str	x8, [sp, #40]
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_4 Depth=1
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #24]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	w10, [sp, #64]
	subs	w10, w10, #1
	str	w8, [x9, w10, uxtw #2]
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #56]
	cbnz	x8, .LBB0_4
	b	.LBB0_21
.LBB0_21:
	ldr	w0, [sp, #36]
	bl	STBI_FREE
	ldr	w0, [sp, #32]
	bl	STBI_FREE
	ldr	w0, [sp, #28]
	bl	STBI_FREE
	ldur	w8, [x29, #-60]
	cbz	w8, .LBB0_24
	b	.LBB0_22
.LBB0_22:
	ldur	w8, [x29, #-60]
	subs	w8, w8, #4
	b.eq	.LBB0_24
	b	.LBB0_23
.LBB0_23:
	ldr	x0, [sp, #48]
	ldur	w2, [x29, #-60]
	ldr	w8, [sp, #64]
	ldr	w9, [sp, #16]
	mul	w3, w8, w9
	ldr	w4, [sp, #20]
	mov	w1, #4
	bl	stbi__convert_format
	str	x0, [sp, #48]
	b	.LBB0_24
.LBB0_24:
	ldr	w8, [sp, #64]
	ldur	x9, [x29, #-48]
	str	w8, [x9]
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-8]
	b	.LBB0_26
.LBB0_25:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_26
.LBB0_26:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	stbi__load_gif_main, .Lfunc_end0-stbi__load_gif_main
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"not GIF"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Image was not as a gif type."
	.size	.L.str.1, 29
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__load_gif_main
	.addrsig_sym stbi__gif_test
	.addrsig_sym memset
	.addrsig_sym stbi__gif_load_next
	.addrsig_sym STBI_REALLOC
	.addrsig_sym stbi__malloc
	.addrsig_sym memcpy
	.addrsig_sym STBI_FREE
	.addrsig_sym stbi__convert_format
	.addrsig_sym stbi__errpuc