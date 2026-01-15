	.text
	.p2align	2                               // -- Begin function stbi__stdio_skip
	.type	stbi__stdio_skip,@function
stbi__stdio_skip:                       // @stbi__stdio_skip
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	adrp	x8, SEEK_CUR
	ldr	w2, [x8, :lo12:SEEK_CUR]
	bl	fseek
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__stdio_skip, .Lfunc_end0-stbi__stdio_skip
                                        // -- End function
	.type	SEEK_CUR,@object                // @SEEK_CUR
	.bss
	.globl	SEEK_CUR
	.p2align	2
SEEK_CUR:
	.word	0                               // 0x0
	.size	SEEK_CUR, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__stdio_skip
	.addrsig_sym fseek
	.addrsig_sym SEEK_CUR