	.text
	.p2align	2                               // -- Begin function stbi__jpeg_reset
	.type	stbi__jpeg_reset,@function
stbi__jpeg_reset:                       // @stbi__jpeg_reset
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #48]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #40]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #32]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	str	xzr, [x8, #24]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	str	xzr, [x8, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	str	xzr, [x8]
	adrp	x8, STBI__MARKER_none
	ldr	w8, [x8, :lo12:STBI__MARKER_none]
	ldr	x9, [sp, #8]
	str	w8, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	mov	w8, #2147483647
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbi__jpeg_reset, .Lfunc_end0-stbi__jpeg_reset
                                        // -- End function
	.type	STBI__MARKER_none,@object       // @STBI__MARKER_none
	.bss
	.globl	STBI__MARKER_none
	.p2align	2
STBI__MARKER_none:
	.word	0                               // 0x0
	.size	STBI__MARKER_none, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_reset
	.addrsig_sym STBI__MARKER_none