	.text
	.p2align	2                               // -- Begin function stbi__fill_bits
	.type	stbi__fill_bits,@function
stbi__fill_bits:                        // @stbi__fill_bits
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #8]
	ldr	w10, [x9]
	mov	w9, #1
	lsl	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, lo
	and	w0, w8, #0x1
	bl	STBI_ASSERT
	ldr	x0, [sp, #8]
	bl	stbi__zget8
	mov	w8, w0
	ldr	x9, [sp, #8]
	ldr	w9, [x9]
	lsl	w10, w8, w9
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #4]
	orr	w8, w8, w10
	str	w8, [x9, #4]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	add	w8, w8, #8
	str	w8, [x9]
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #24
	b.le	.LBB0_1
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__fill_bits, .Lfunc_end0-stbi__fill_bits
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__fill_bits
	.addrsig_sym STBI_ASSERT
	.addrsig_sym stbi__zget8