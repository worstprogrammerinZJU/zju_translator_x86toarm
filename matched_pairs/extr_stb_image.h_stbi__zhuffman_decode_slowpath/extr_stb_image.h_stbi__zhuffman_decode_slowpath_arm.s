	.text
	.p2align	2                               // -- Begin function stbi__zhuffman_decode_slowpath
	.type	stbi__zhuffman_decode_slowpath,@function
stbi__zhuffman_decode_slowpath:         // @stbi__zhuffman_decode_slowpath
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	mov	w1, #16
	bl	stbi__bit_reverse
	str	w0, [sp, #12]
	adrp	x8, STBI__ZFAST_BITS
	ldr	w8, [x8, :lo12:STBI__ZFAST_BITS]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #16]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_5
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_5:
	ldr	w8, [sp, #16]
	subs	w8, w8, #16
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_8
.LBB0_7:
	ldr	w8, [sp, #12]
	ldr	w10, [sp, #16]
	mov	w9, #16
	subs	w9, w9, w10
	asr	w8, w8, w9
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #16]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #16]
	ldr	w9, [x9, x10, lsl #2]
	add	w8, w8, w9
	str	w8, [sp, #20]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #24]
	ldrsw	x9, [sp, #20]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	STBI_ASSERT
	ldr	w10, [sp, #16]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9]
	asr	w8, w8, w10
	str	w8, [x9]
	ldr	w10, [sp, #16]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #4]
	subs	w8, w8, w10
	str	w8, [x9, #4]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #32]
	ldrsw	x9, [sp, #20]
	ldr	w8, [x8, x9, lsl #2]
	stur	w8, [x29, #-4]
	b	.LBB0_8
.LBB0_8:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__zhuffman_decode_slowpath, .Lfunc_end0-stbi__zhuffman_decode_slowpath
                                        // -- End function
	.type	STBI__ZFAST_BITS,@object        // @STBI__ZFAST_BITS
	.bss
	.globl	STBI__ZFAST_BITS
	.p2align	2
STBI__ZFAST_BITS:
	.word	0                               // 0x0
	.size	STBI__ZFAST_BITS, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__zhuffman_decode_slowpath
	.addrsig_sym stbi__bit_reverse
	.addrsig_sym STBI_ASSERT
	.addrsig_sym STBI__ZFAST_BITS