	.text
	.p2align	2                               // -- Begin function stbi__jpeg_test
	.type	stbi__jpeg_test,@function
stbi__jpeg_test:                        // @stbi__jpeg_test
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	mov	w0, #8
	bl	stbi__malloc
	str	x0, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	ldr	x0, [sp, #8]
	bl	stbi__setup_jpeg
	ldr	x0, [sp, #8]
	adrp	x8, STBI__SCAN_type
	ldr	w1, [x8, :lo12:STBI__SCAN_type]
	bl	stbi__decode_jpeg_header
	stur	w0, [x29, #-12]
	ldur	x0, [x29, #-8]
	bl	stbi__rewind
	ldr	x0, [sp, #8]
	bl	STBI_FREE
	ldur	w0, [x29, #-12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__jpeg_test, .Lfunc_end0-stbi__jpeg_test
                                        // -- End function
	.type	STBI__SCAN_type,@object         // @STBI__SCAN_type
	.bss
	.globl	STBI__SCAN_type
	.p2align	2
STBI__SCAN_type:
	.word	0                               // 0x0
	.size	STBI__SCAN_type, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_test
	.addrsig_sym stbi__malloc
	.addrsig_sym stbi__setup_jpeg
	.addrsig_sym stbi__decode_jpeg_header
	.addrsig_sym stbi__rewind
	.addrsig_sym STBI_FREE
	.addrsig_sym STBI__SCAN_type