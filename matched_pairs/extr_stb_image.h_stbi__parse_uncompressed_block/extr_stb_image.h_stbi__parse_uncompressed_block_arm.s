	.text
	.p2align	2                               // -- Begin function stbi__parse_uncompressed_block
	.type	stbi__parse_uncompressed_block,@function
stbi__parse_uncompressed_block:         // @stbi__parse_uncompressed_block
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	and	w8, w8, #0x7
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	and	w1, w8, #0x7
	bl	stbi__zreceive
	b	.LBB0_2
.LBB0_2:
	str	wzr, [sp, #4]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w8, w8, #0
	b.le	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #4]
	ldrsw	x10, [sp, #4]
	mov	w9, w10
	add	w9, w9, #1
	str	w9, [sp, #4]
	add	x9, sp, #16
	str	w8, [x9, x10, lsl #2]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #4]
	asr	w8, w8, #8
	str	w8, [x9, #4]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9]
	subs	w8, w8, #8
	str	w8, [x9]
	b	.LBB0_3
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	STBI_ASSERT
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #4
	b.ge	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__zget8
	ldrsw	x9, [sp, #4]
	mov	w8, w9
	add	w8, w8, #1
	str	w8, [sp, #4]
	add	x8, sp, #16
	str	w0, [x8, x9, lsl #2]
	b	.LBB0_6
.LBB0_8:
	ldr	w9, [sp, #20]
	ldr	w8, [sp, #16]
	add	w8, w8, w9, lsl #8
	str	w8, [sp, #12]
	ldr	w9, [sp, #28]
	ldr	w8, [sp, #24]
	add	w8, w8, w9, lsl #8
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	eor	w9, w9, #0xffff
	subs	w8, w8, w9
	b.eq	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_10:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.le	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_12:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	subs	x8, x8, x9
	b.le	.LBB0_16
	b	.LBB0_13
.LBB0_13:
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #24]
	ldr	w2, [sp, #12]
	bl	stbi__zexpand
	cbnz	w0, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	stur	wzr, [x29, #-4]
	b	.LBB0_17
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #24]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	ldr	w2, [sp, #12]
	bl	memcpy
	ldrsw	x10, [sp, #12]
	ldur	x9, [x29, #-16]
	ldr	x8, [x9, #8]
	add	x8, x8, x10
	str	x8, [x9, #8]
	ldrsw	x10, [sp, #12]
	ldur	x9, [x29, #-16]
	ldr	x8, [x9, #24]
	add	x8, x8, x10
	str	x8, [x9, #24]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_17
.LBB0_17:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__parse_uncompressed_block, .Lfunc_end0-stbi__parse_uncompressed_block
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"zlib corrupt"
	.size	.L.str, 13
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt PNG"
	.size	.L.str.1, 12
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"read past buffer"
	.size	.L.str.2, 17
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__parse_uncompressed_block
	.addrsig_sym stbi__zreceive
	.addrsig_sym STBI_ASSERT
	.addrsig_sym stbi__zget8
	.addrsig_sym stbi__err
	.addrsig_sym stbi__zexpand
	.addrsig_sym memcpy