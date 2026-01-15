	.text
	.p2align	2                               // -- Begin function stbi__jpeg_decode_block
	.type	stbi__jpeg_decode_block,@function
stbi__jpeg_decode_block:                // @stbi__jpeg_decode_block
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	stur	w5, [x29, #-52]
	str	x6, [sp, #48]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w8, w8, #16
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	bl	stbi__grow_buffer_unsafe
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	bl	stbi__jpeg_huff_decode
	str	w0, [sp, #32]
	ldr	w8, [sp, #32]
	subs	w8, w8, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_23
.LBB0_4:
	ldur	x0, [x29, #-24]
	mov	w1, wzr
	mov	w2, #128
	bl	memset
	ldr	w8, [sp, #32]
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #32]
	bl	stbi__extend_receive
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_6:
	mov	w8, wzr
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	str	w8, [sp, #44]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-52]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	add	w8, w8, w9
	str	w8, [sp, #40]
	ldr	w8, [sp, #40]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-52]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #40]
	ldr	x9, [sp, #48]
	ldr	w9, [x9]
	mul	w8, w8, w9
	ldur	x9, [x29, #-24]
	strh	w8, [x9]
	mov	w8, #1
	str	w8, [sp, #36]
	b	.LBB0_8
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w8, w8, #16
	b.ge	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__grow_buffer_unsafe
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #4]
	adrp	x9, FAST_BITS
	ldr	w11, [x9, :lo12:FAST_BITS]
	mov	w10, #32
	subs	w10, w10, w11
	asr	w8, w8, w10
	ldr	w10, [x9, :lo12:FAST_BITS]
	mov	w9, #1
	lsl	w9, w9, w10
	subs	w9, w9, #1
	and	w8, w8, w9
	str	w8, [sp, #24]
	ldur	x8, [x29, #-48]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #20]
	asr	w8, w8, #4
	and	w9, w8, #0xf
	ldr	w8, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #36]
	ldr	w8, [sp, #20]
	and	w8, w8, #0xf
	str	w8, [sp, #16]
	ldr	w10, [sp, #16]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #4]
	lsl	w8, w8, w10
	str	w8, [x9, #4]
	ldr	w10, [sp, #16]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9]
	subs	w8, w8, w10
	str	w8, [x9]
	adrp	x8, stbi__jpeg_dezigzag
	ldr	x8, [x8, :lo12:stbi__jpeg_dezigzag]
	ldrsw	x9, [sp, #36]
	mov	w10, w9
	add	w10, w10, #1
	str	w10, [sp, #36]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #28]
	ldr	w8, [sp, #20]
	asr	w8, w8, #8
	ldr	x9, [sp, #48]
	ldr	w10, [sp, #28]
                                        // kill: def $x10 killed $w10
	ldr	w9, [x9, x10, lsl #2]
	mul	w8, w8, w9
	ldur	x9, [x29, #-24]
	ldr	w10, [sp, #28]
                                        // kill: def $x10 killed $w10
	strh	w8, [x9, x10, lsl #1]
	b	.LBB0_20
.LBB0_12:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-40]
	bl	stbi__jpeg_huff_decode
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	b.ge	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_23
.LBB0_14:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #12]
	and	w8, w8, #0xf
	str	w8, [sp, #16]
	ldr	w8, [sp, #12]
	asr	w8, w8, #4
	str	w8, [sp, #20]
	ldr	w8, [sp, #16]
	cbnz	w8, .LBB0_18
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #240
	b.eq	.LBB0_17
	b	.LBB0_16
.LBB0_16:
	b	.LBB0_22
.LBB0_17:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #16
	str	w8, [sp, #36]
	b	.LBB0_19
.LBB0_18:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w9, [sp, #20]
	ldr	w8, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #36]
	adrp	x8, stbi__jpeg_dezigzag
	ldr	x8, [x8, :lo12:stbi__jpeg_dezigzag]
	ldrsw	x9, [sp, #36]
	mov	w10, w9
	add	w10, w10, #1
	str	w10, [sp, #36]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #28]
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #16]
	bl	stbi__extend_receive
	ldr	x8, [sp, #48]
	ldr	w9, [sp, #28]
                                        // kill: def $x9 killed $w9
	ldr	w8, [x8, x9, lsl #2]
	mul	w8, w0, w8
	ldur	x9, [x29, #-24]
	ldr	w10, [sp, #28]
                                        // kill: def $x10 killed $w10
	strh	w8, [x9, x10, lsl #1]
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_8 Depth=1
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_8 Depth=1
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #36]
	subs	w8, w8, #64
	b.lt	.LBB0_8
	b	.LBB0_22
.LBB0_22:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_23
.LBB0_23:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	stbi__jpeg_decode_block, .Lfunc_end0-stbi__jpeg_decode_block
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad huffman code"
	.size	.L.str, 17
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt JPEG"
	.size	.L.str.1, 13
	.type	FAST_BITS,@object               // @FAST_BITS
	.bss
	.globl	FAST_BITS
	.p2align	2
FAST_BITS:
	.word	0                               // 0x0
	.size	FAST_BITS, 4
	.type	stbi__jpeg_dezigzag,@object     // @stbi__jpeg_dezigzag
	.globl	stbi__jpeg_dezigzag
	.p2align	3
stbi__jpeg_dezigzag:
	.xword	0
	.size	stbi__jpeg_dezigzag, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_decode_block
	.addrsig_sym stbi__grow_buffer_unsafe
	.addrsig_sym stbi__jpeg_huff_decode
	.addrsig_sym stbi__err
	.addrsig_sym memset
	.addrsig_sym stbi__extend_receive
	.addrsig_sym FAST_BITS
	.addrsig_sym stbi__jpeg_dezigzag