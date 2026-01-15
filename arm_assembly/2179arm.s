	.text
	.p2align	2                               // -- Begin function stbi__compute_huffman_codes
	.type	stbi__compute_huffman_codes,@function
stbi__compute_huffman_codes:            // @stbi__compute_huffman_codes
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #1968
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	mov	w1, #5
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	stbi__zreceive
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	add	w8, w0, #257
	str	w8, [sp, #40]
	ldur	x0, [x29, #-16]
	bl	stbi__zreceive
	add	w8, w0, #1
	str	w8, [sp, #36]
	ldur	x0, [x29, #-16]
	mov	w1, #4
	bl	stbi__zreceive
	add	w8, w0, #4
	str	w8, [sp, #32]
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #28]
	add	x0, sp, #52
	mov	w1, wzr
	mov	w2, #76
	bl	memset
	str	wzr, [sp, #48]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	mov	w1, #3
	bl	stbi__zreceive
	str	w0, [sp, #24]
	ldr	w8, [sp, #24]
	ldrsw	x10, [sp, #48]
	adrp	x9, stbi__compute_huffman_codes.length_dezigzag
	add	x9, x9, :lo12:stbi__compute_huffman_codes.length_dezigzag
	ldrsw	x10, [x9, x10, lsl #2]
	add	x9, sp, #52
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	str	w8, [sp, #48]
	b	.LBB0_1
.LBB0_4:
	sub	x0, x29, #20
	add	x1, sp, #52
	mov	w2, #19
	bl	stbi__zbuild_huffman
	cbnz	w0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	stur	wzr, [x29, #-4]
	b	.LBB0_32
.LBB0_6:
	str	wzr, [sp, #44]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_25
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x0, [x29, #-16]
	sub	x1, x29, #20
	bl	stbi__zhuffman_decode
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	tbnz	w8, #31, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #19
	b.lt	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_32
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #16
	b.ge	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #20]
	ldrsw	x10, [sp, #44]
	mov	w9, w10
	add	w9, w9, #1
	str	w9, [sp, #44]
	add	x9, sp, #128
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_24
.LBB0_13:                               //   in Loop: Header=BB0_7 Depth=1
	str	wzr, [sp, #16]
	ldr	w8, [sp, #20]
	subs	w8, w8, #16
	b.ne	.LBB0_17
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	x0, [x29, #-16]
	mov	w1, #2
	bl	stbi__zreceive
	add	w8, w0, #3
	str	w8, [sp, #20]
	ldr	w8, [sp, #44]
	cbnz	w8, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_32
.LBB0_16:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #44]
	subs	w9, w8, #1
	add	x8, sp, #128
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #16]
	b	.LBB0_21
.LBB0_17:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #17
	b.ne	.LBB0_19
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	x0, [x29, #-16]
	mov	w1, #3
	bl	stbi__zreceive
	add	w8, w0, #3
	str	w8, [sp, #20]
	b	.LBB0_20
.LBB0_19:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #18
	cset	w8, eq
	and	w0, w8, #0x1
	bl	STBI_ASSERT
	ldur	x0, [x29, #-16]
	mov	w1, #7
	bl	stbi__zreceive
	add	w8, w0, #11
	str	w8, [sp, #20]
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_23
	b	.LBB0_22
.LBB0_22:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_32
.LBB0_23:                               //   in Loop: Header=BB0_7 Depth=1
	ldrsw	x9, [sp, #44]
	add	x8, sp, #128
	add	x0, x8, x9, lsl #2
	ldr	w1, [sp, #16]
	ldr	w2, [sp, #20]
	bl	memset
	ldr	w9, [sp, #20]
	ldr	w8, [sp, #44]
	add	w8, w8, w9
	str	w8, [sp, #44]
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_7
.LBB0_25:
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.eq	.LBB0_27
	b	.LBB0_26
.LBB0_26:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_32
.LBB0_27:
	ldur	x8, [x29, #-16]
	add	x0, x8, #4
	ldr	w2, [sp, #40]
	add	x1, sp, #128
	bl	stbi__zbuild_huffman
	cbnz	w0, .LBB0_29
	b	.LBB0_28
.LBB0_28:
	stur	wzr, [x29, #-4]
	b	.LBB0_32
.LBB0_29:
	ldur	x0, [x29, #-16]
	ldrsw	x9, [sp, #40]
	add	x8, sp, #128
	add	x1, x8, x9, lsl #2
	ldr	w2, [sp, #36]
	bl	stbi__zbuild_huffman
	cbnz	w0, .LBB0_31
	b	.LBB0_30
.LBB0_30:
	stur	wzr, [x29, #-4]
	b	.LBB0_32
.LBB0_31:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_32
.LBB0_32:
	ldur	w0, [x29, #-4]
	add	sp, sp, #1968
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	stbi__compute_huffman_codes, .Lfunc_end0-stbi__compute_huffman_codes
                                        // -- End function
	.type	stbi__compute_huffman_codes.length_dezigzag,@object // @stbi__compute_huffman_codes.length_dezigzag
	.section	.rodata,"a",@progbits
	.p2align	2
stbi__compute_huffman_codes.length_dezigzag:
	.word	16                              // 0x10
	.word	17                              // 0x11
	.word	18                              // 0x12
	.word	0                               // 0x0
	.word	8                               // 0x8
	.word	7                               // 0x7
	.word	9                               // 0x9
	.word	6                               // 0x6
	.word	10                              // 0xa
	.word	5                               // 0x5
	.word	11                              // 0xb
	.word	4                               // 0x4
	.word	12                              // 0xc
	.word	3                               // 0x3
	.word	13                              // 0xd
	.word	2                               // 0x2
	.word	14                              // 0xe
	.word	1                               // 0x1
	.word	15                              // 0xf
	.size	stbi__compute_huffman_codes.length_dezigzag, 76
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad codelengths"
	.size	.L.str, 16
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt PNG"
	.size	.L.str.1, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__compute_huffman_codes
	.addrsig_sym stbi__zreceive
	.addrsig_sym memset
	.addrsig_sym stbi__zbuild_huffman
	.addrsig_sym stbi__zhuffman_decode
	.addrsig_sym stbi__err
	.addrsig_sym STBI_ASSERT
	.addrsig_sym stbi__compute_huffman_codes.length_dezigzag