	.text
	.p2align	2                               // -- Begin function stbi__start_file
	.type	stbi__start_file,@function
stbi__start_file:                       // @stbi__start_file
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x2, [sp]
	adrp	x1, stbi__stdio_callbacks
	add	x1, x1, :lo12:stbi__stdio_callbacks
	bl	stbi__start_callbacks
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__start_file, .Lfunc_end0-stbi__start_file
                                        // -- End function
	.type	stbi__stdio_callbacks,@object   // @stbi__stdio_callbacks
	.bss
	.globl	stbi__stdio_callbacks
	.p2align	2
stbi__stdio_callbacks:
	.word	0                               // 0x0
	.size	stbi__stdio_callbacks, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__start_file
	.addrsig_sym stbi__start_callbacks
	.addrsig_sym stbi__stdio_callbacks