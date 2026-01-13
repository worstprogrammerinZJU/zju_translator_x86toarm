	.text
	.p2align	2                               // -- Begin function stbi__parse_zlib
	.type	stbi__parse_zlib,@function
stbi__parse_zlib:                       // @stbi__parse_zlib
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	stbi__parse_zlib_header
	cbnz	w0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-4]
	b	.LBB0_27
.LBB0_3:
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #16]
	str	xzr, [x8, #16]
	ldr	x8, [sp, #16]
	str	xzr, [x8, #8]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #16]
	mov	w1, #1
	bl	stbi__zreceive
	str	w0, [sp, #8]
	ldr	x0, [sp, #16]
	mov	w1, #2
	bl	stbi__zreceive
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	cbnz	w8, .LBB0_9
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x0, [sp, #16]
	bl	stbi__parse_uncompressed_block
	cbnz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	stur	wzr, [x29, #-4]
	b	.LBB0_27
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_24
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #3
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	stur	wzr, [x29, #-4]
	b	.LBB0_27
.LBB0_11:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	b.ne	.LBB0_17
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #16]
	add	x0, x8, #4
	adrp	x8, stbi__zdefault_length
	ldr	w1, [x8, :lo12:stbi__zdefault_length]
	mov	w2, #288
	bl	stbi__zbuild_huffman
	cbnz	w0, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	stur	wzr, [x29, #-4]
	b	.LBB0_27
.LBB0_14:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	x0, [sp, #16]
	adrp	x8, stbi__zdefault_distance
	ldr	w1, [x8, :lo12:stbi__zdefault_distance]
	mov	w2, #32
	bl	stbi__zbuild_huffman
	cbnz	w0, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	stur	wzr, [x29, #-4]
	b	.LBB0_27
.LBB0_16:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_20
.LBB0_17:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	x0, [sp, #16]
	bl	stbi__compute_huffman_codes
	cbnz	w0, .LBB0_19
	b	.LBB0_18
.LBB0_18:
	stur	wzr, [x29, #-4]
	b	.LBB0_27
.LBB0_19:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	x0, [sp, #16]
	bl	stbi__parse_huffman_block
	cbnz	w0, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	stur	wzr, [x29, #-4]
	b	.LBB0_27
.LBB0_22:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #8]
	cbz	w8, .LBB0_5
	b	.LBB0_26
.LBB0_26:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_27
.LBB0_27:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__parse_zlib, .Lfunc_end0-stbi__parse_zlib
                                        // -- End function
	.type	stbi__zdefault_length,@object   // @stbi__zdefault_length
	.bss
	.globl	stbi__zdefault_length
	.p2align	2
stbi__zdefault_length:
	.word	0                               // 0x0
	.size	stbi__zdefault_length, 4
	.type	stbi__zdefault_distance,@object // @stbi__zdefault_distance
	.globl	stbi__zdefault_distance
	.p2align	2
stbi__zdefault_distance:
	.word	0                               // 0x0
	.size	stbi__zdefault_distance, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__parse_zlib
	.addrsig_sym stbi__parse_zlib_header
	.addrsig_sym stbi__zreceive
	.addrsig_sym stbi__parse_uncompressed_block
	.addrsig_sym stbi__zbuild_huffman
	.addrsig_sym stbi__compute_huffman_codes
	.addrsig_sym stbi__parse_huffman_block
	.addrsig_sym stbi__zdefault_length
	.addrsig_sym stbi__zdefault_distance