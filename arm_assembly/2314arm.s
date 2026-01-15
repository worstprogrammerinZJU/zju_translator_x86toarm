	.text
	.p2align	2                               // -- Begin function stbiw__encode_png_line
	.type	stbiw__encode_png_line,@function
stbiw__encode_png_line:                 // @stbiw__encode_png_line
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	stur	w4, [x29, #-24]
	stur	w5, [x29, #-28]
	stur	w6, [x29, #-32]
	stur	x7, [x29, #-40]
	ldur	w10, [x29, #-24]
	adrp	x9, stbiw__encode_png_line.firstmap
	add	x9, x9, :lo12:stbiw__encode_png_line.firstmap
	adrp	x8, stbiw__encode_png_line.mapping
	add	x8, x8, :lo12:stbiw__encode_png_line.mapping
	subs	w10, w10, #0
	csel	x8, x8, x9, ne
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-48]
	ldursw	x9, [x29, #-32]
	ldr	w8, [x8, x9, lsl #2]
	stur	w8, [x29, #-56]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	ldur	w8, [x29, #-12]
	str	w8, [sp, #56]                   // 4-byte Folded Spill
	adrp	x8, stbi__flip_vertically_on_write
	ldr	x8, [x8, :lo12:stbi__flip_vertically_on_write]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #1
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	str	w8, [sp, #44]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldur	w8, [x29, #-24]
	str	w8, [sp, #44]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	w9, [sp, #56]                   // 4-byte Folded Reload
	ldr	w10, [sp, #44]                  // 4-byte Folded Reload
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw
	str	x8, [sp, #64]
	adrp	x8, stbi__flip_vertically_on_write
	ldr	x8, [x8, :lo12:stbi__flip_vertically_on_write]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	w9, [x29, #-12]
	mov	w8, wzr
	subs	w8, w8, w9
	str	w8, [sp, #40]                   // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_5:
	ldur	w8, [x29, #-12]
	str	w8, [sp, #40]                   // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #40]                   // 4-byte Folded Reload
	str	w8, [sp, #60]
	stur	wzr, [x29, #-52]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-52]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_19
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	w8, [x29, #-56]
	subs	w8, w8, #0
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	subs	x8, x8, #6
	b.hi	.LBB0_17
// %bb.9:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x11, [sp, #32]                  // 8-byte Folded Reload
	adrp	x10, .LJTI0_1
	add	x10, x10, :lo12:.LJTI0_1
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-52]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldur	x9, [x29, #-40]
	ldursw	x10, [x29, #-52]
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_17
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-52]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldur	x9, [x29, #-40]
	ldursw	x10, [x29, #-52]
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_17
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-52]
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #64]
	ldur	w10, [x29, #-52]
	ldr	w11, [sp, #60]
	subs	w10, w10, w11
	ldrb	w9, [x9, w10, sxtw]
	subs	w8, w8, w9
	ldur	x9, [x29, #-40]
	ldursw	x10, [x29, #-52]
	strb	w8, [x9, x10]
	b	.LBB0_17
.LBB0_13:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-52]
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #64]
	ldur	w10, [x29, #-52]
	ldr	w11, [sp, #60]
	subs	w10, w10, w11
	ldrb	w9, [x9, w10, sxtw]
	subs	w8, w8, w9, asr #1
	ldur	x9, [x29, #-40]
	ldursw	x10, [x29, #-52]
	strb	w8, [x9, x10]
	b	.LBB0_17
.LBB0_14:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-52]
	ldrb	w8, [x8, x9]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	ldr	x8, [sp, #64]
	ldur	w9, [x29, #-52]
	ldr	w10, [sp, #60]
	subs	w9, w9, w10
	ldrb	w1, [x8, w9, sxtw]
	mov	w2, wzr
	mov	w0, w2
	bl	stbiw__paeth
	ldr	w8, [sp, #28]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	ldur	x9, [x29, #-40]
	ldursw	x10, [x29, #-52]
	strb	w8, [x9, x10]
	b	.LBB0_17
.LBB0_15:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-52]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldur	x9, [x29, #-40]
	ldursw	x10, [x29, #-52]
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_17
.LBB0_16:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-52]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldur	x9, [x29, #-40]
	ldursw	x10, [x29, #-52]
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_7
.LBB0_19:
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-52]
	b	.LBB0_20
.LBB0_20:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-52]
	ldur	w9, [x29, #-16]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_32
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_20 Depth=1
	ldur	w8, [x29, #-56]
	subs	w8, w8, #0
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	subs	x8, x8, #6
	b.hi	.LBB0_30
// %bb.22:                              //   in Loop: Header=BB0_20 Depth=1
	ldr	x11, [sp, #16]                  // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp1:
	adr	x8, .Ltmp1
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_23:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-52]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldur	x9, [x29, #-40]
	ldursw	x10, [x29, #-52]
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_30
.LBB0_24:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-52]
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #64]
	ldur	w10, [x29, #-52]
	ldur	w11, [x29, #-28]
	subs	w10, w10, w11
	ldrb	w9, [x9, w10, sxtw]
	subs	w8, w8, w9
	ldur	x9, [x29, #-40]
	ldursw	x10, [x29, #-52]
	strb	w8, [x9, x10]
	b	.LBB0_30
.LBB0_25:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-52]
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #64]
	ldur	w10, [x29, #-52]
	ldr	w11, [sp, #60]
	subs	w10, w10, w11
	ldrb	w9, [x9, w10, sxtw]
	subs	w8, w8, w9
	ldur	x9, [x29, #-40]
	ldursw	x10, [x29, #-52]
	strb	w8, [x9, x10]
	b	.LBB0_30
.LBB0_26:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-52]
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #64]
	ldur	w10, [x29, #-52]
	ldur	w11, [x29, #-28]
	subs	w10, w10, w11
	ldrb	w9, [x9, w10, sxtw]
	ldr	x10, [sp, #64]
	ldur	w11, [x29, #-52]
	ldr	w12, [sp, #60]
	subs	w11, w11, w12
	ldrb	w10, [x10, w11, sxtw]
	add	w9, w9, w10
	subs	w8, w8, w9, asr #1
	ldur	x9, [x29, #-40]
	ldursw	x10, [x29, #-52]
	strb	w8, [x9, x10]
	b	.LBB0_30
.LBB0_27:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-52]
	ldrb	w8, [x8, x9]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldr	x8, [sp, #64]
	ldur	w9, [x29, #-52]
	ldur	w10, [x29, #-28]
	subs	w9, w9, w10
	ldrb	w0, [x8, w9, sxtw]
	ldr	x8, [sp, #64]
	ldur	w9, [x29, #-52]
	ldr	w10, [sp, #60]
	subs	w9, w9, w10
	ldrb	w1, [x8, w9, sxtw]
	ldr	x8, [sp, #64]
	ldur	w9, [x29, #-52]
	ldr	w10, [sp, #60]
	subs	w9, w9, w10
	ldur	w10, [x29, #-28]
	subs	w9, w9, w10
	ldrb	w2, [x8, w9, sxtw]
	bl	stbiw__paeth
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	ldur	x9, [x29, #-40]
	ldursw	x10, [x29, #-52]
	strb	w8, [x9, x10]
	b	.LBB0_30
.LBB0_28:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-52]
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #64]
	ldur	w10, [x29, #-52]
	ldur	w11, [x29, #-28]
	subs	w10, w10, w11
	ldrb	w9, [x9, w10, sxtw]
	subs	w8, w8, w9, asr #1
	ldur	x9, [x29, #-40]
	ldursw	x10, [x29, #-52]
	strb	w8, [x9, x10]
	b	.LBB0_30
.LBB0_29:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-52]
	ldrb	w8, [x8, x9]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldr	x8, [sp, #64]
	ldur	w9, [x29, #-52]
	ldur	w10, [x29, #-28]
	subs	w9, w9, w10
	ldrb	w0, [x8, w9, sxtw]
	mov	w2, wzr
	mov	w1, w2
	bl	stbiw__paeth
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	ldur	x9, [x29, #-40]
	ldursw	x10, [x29, #-52]
	strb	w8, [x9, x10]
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_20 Depth=1
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_20 Depth=1
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_20
.LBB0_32:
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	stbiw__encode_png_line, .Lfunc_end0-stbiw__encode_png_line
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_23-.Ltmp1
	.word	.LBB0_24-.Ltmp1
	.word	.LBB0_25-.Ltmp1
	.word	.LBB0_26-.Ltmp1
	.word	.LBB0_27-.Ltmp1
	.word	.LBB0_28-.Ltmp1
	.word	.LBB0_29-.Ltmp1
	.p2align	2
.LJTI0_1:
	.word	.LBB0_10-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_16-.Ltmp0
                                        // -- End function
	.type	stbiw__encode_png_line.mapping,@object // @stbiw__encode_png_line.mapping
	.data
	.p2align	2
stbiw__encode_png_line.mapping:
	.word	0                               // 0x0
	.word	1                               // 0x1
	.word	2                               // 0x2
	.word	3                               // 0x3
	.word	4                               // 0x4
	.size	stbiw__encode_png_line.mapping, 20
	.type	stbiw__encode_png_line.firstmap,@object // @stbiw__encode_png_line.firstmap
	.p2align	2
stbiw__encode_png_line.firstmap:
	.word	0                               // 0x0
	.word	1                               // 0x1
	.word	0                               // 0x0
	.word	5                               // 0x5
	.word	6                               // 0x6
	.size	stbiw__encode_png_line.firstmap, 20
	.type	stbi__flip_vertically_on_write,@object // @stbi__flip_vertically_on_write
	.bss
	.globl	stbi__flip_vertically_on_write
	.p2align	3
stbi__flip_vertically_on_write:
	.xword	0                               // 0x0
	.size	stbi__flip_vertically_on_write, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__encode_png_line
	.addrsig_sym stbiw__paeth
	.addrsig_sym stbiw__encode_png_line.mapping
	.addrsig_sym stbiw__encode_png_line.firstmap
	.addrsig_sym stbi__flip_vertically_on_write