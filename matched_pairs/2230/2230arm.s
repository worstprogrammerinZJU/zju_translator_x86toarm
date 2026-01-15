	.text
	.p2align	2                               // -- Begin function stbi__jpeg_get_bits
	.type	stbi__jpeg_get_bits,@function
stbi__jpeg_get_bits:                    // @stbi__jpeg_get_bits
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	stbi__grow_buffer_unsafe
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #4]
	ldr	w1, [sp, #4]
	bl	stbi_lrot
	str	w0, [sp]
	ldr	w9, [sp]
	adrp	x8, stbi__bmask
	ldr	x10, [x8, :lo12:stbi__bmask]
	ldrsw	x11, [sp, #4]
	ldr	w10, [x10, x11, lsl #2]
	bic	w9, w9, w10
	ldr	x10, [sp, #8]
	str	w9, [x10, #4]
	ldr	x8, [x8, :lo12:stbi__bmask]
	ldrsw	x9, [sp, #4]
	ldr	w9, [x8, x9, lsl #2]
	ldr	w8, [sp]
	and	w8, w8, w9
	str	w8, [sp]
	ldr	w10, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	subs	w8, w8, w10
	str	w8, [x9]
	ldr	w0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__jpeg_get_bits, .Lfunc_end0-stbi__jpeg_get_bits
                                        // -- End function
	.type	stbi__bmask,@object             // @stbi__bmask
	.bss
	.globl	stbi__bmask
	.p2align	3
stbi__bmask:
	.xword	0
	.size	stbi__bmask, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_get_bits
	.addrsig_sym stbi__grow_buffer_unsafe
	.addrsig_sym stbi_lrot
	.addrsig_sym stbi__bmask