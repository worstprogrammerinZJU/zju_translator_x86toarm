	.text
	.p2align	2                               // -- Begin function stbi__zhuffman_decode
	.type	stbi__zhuffman_decode,@function
stbi__zhuffman_decode:                  // @stbi__zhuffman_decode
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	subs	w8, w8, #16
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	stbi__fill_bits
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	adrp	x10, STBI__ZFAST_MASK
	ldr	x10, [x10, :lo12:STBI__ZFAST_MASK]
	and	x9, x9, x10
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #4]
	asr	w8, w8, #9
	str	w8, [sp]
	ldr	w8, [sp]
	mov	w10, w8
	ldr	x9, [sp, #16]
	ldr	x8, [x9, #8]
	lsr	x8, x8, x10
	str	x8, [x9, #8]
	ldr	w10, [sp]
	ldr	x9, [sp, #16]
	ldr	w8, [x9]
	subs	w8, w8, w10
	str	w8, [x9]
	ldr	w8, [sp, #4]
	and	w8, w8, #0x1ff
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	stbi__zhuffman_decode_slowpath
	stur	w0, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__zhuffman_decode, .Lfunc_end0-stbi__zhuffman_decode
                                        // -- End function
	.type	STBI__ZFAST_MASK,@object        // @STBI__ZFAST_MASK
	.bss
	.globl	STBI__ZFAST_MASK
	.p2align	3
STBI__ZFAST_MASK:
	.xword	0                               // 0x0
	.size	STBI__ZFAST_MASK, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__zhuffman_decode
	.addrsig_sym stbi__fill_bits
	.addrsig_sym stbi__zhuffman_decode_slowpath
	.addrsig_sym STBI__ZFAST_MASK