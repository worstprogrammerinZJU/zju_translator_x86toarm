	.text
	.p2align	2                               // -- Begin function stbi__jpeg_huff_decode
	.type	stbi__jpeg_huff_decode,@function
stbi__jpeg_huff_decode:                 // @stbi__jpeg_huff_decode
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
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
	str	w8, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #255
	b.ge	.LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.le	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_5:
	ldr	w10, [sp, #8]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #4]
	lsl	w8, w8, w10
	str	w8, [x9, #4]
	ldr	w10, [sp, #8]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9]
	subs	w8, w8, w10
	str	w8, [x9]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_6:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #4]
	asr	w8, w8, #16
	str	w8, [sp, #20]
	adrp	x8, FAST_BITS
	ldr	w8, [x8, :lo12:FAST_BITS]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #24]
	ldrsw	x10, [sp, #12]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	b.hs	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_11
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_11:
	ldr	w8, [sp, #12]
	subs	w8, w8, #17
	b.ne	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldur	x9, [x29, #-16]
	ldr	w8, [x9]
	subs	w8, w8, #16
	str	w8, [x9]
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_13:
	ldr	w8, [sp, #12]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.le	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_15:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #4]
	ldr	w9, [sp, #12]
	mov	w10, #32
	subs	w9, w10, w9
	asr	w8, w8, w9
	adrp	x9, stbi__bmask
	ldr	x11, [x9, :lo12:stbi__bmask]
	ldrsw	x12, [sp, #12]
	ldr	w11, [x11, x12, lsl #2]
	and	w8, w8, w11
	ldr	x11, [sp, #24]
	ldr	x11, [x11, #32]
	ldrsw	x12, [sp, #12]
	ldr	w11, [x11, x12, lsl #2]
	add	w8, w8, w11
	str	w8, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #4]
	ldr	x11, [sp, #24]
	ldr	x11, [x11, #8]
	ldrsw	x12, [sp, #16]
	ldr	w11, [x11, x12, lsl #2]
	subs	w10, w10, w11
	asr	w8, w8, w10
	ldr	x9, [x9, :lo12:stbi__bmask]
	ldr	x10, [sp, #24]
	ldr	x10, [x10, #8]
	ldrsw	x11, [sp, #16]
	ldrsw	x10, [x10, x11, lsl #2]
	ldr	w9, [x9, x10, lsl #2]
	and	w8, w8, w9
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #40]
	ldrsw	x10, [sp, #16]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	STBI_ASSERT
	ldr	w10, [sp, #12]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9]
	subs	w8, w8, w10
	str	w8, [x9]
	ldr	w10, [sp, #12]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #4]
	lsl	w8, w8, w10
	str	w8, [x9, #4]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_16:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__jpeg_huff_decode, .Lfunc_end0-stbi__jpeg_huff_decode
                                        // -- End function
	.type	FAST_BITS,@object               // @FAST_BITS
	.bss
	.globl	FAST_BITS
	.p2align	2
FAST_BITS:
	.word	0                               // 0x0
	.size	FAST_BITS, 4
	.type	stbi__bmask,@object             // @stbi__bmask
	.globl	stbi__bmask
	.p2align	3
stbi__bmask:
	.xword	0
	.size	stbi__bmask, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_huff_decode
	.addrsig_sym stbi__grow_buffer_unsafe
	.addrsig_sym STBI_ASSERT
	.addrsig_sym FAST_BITS
	.addrsig_sym stbi__bmask