	.text
	.p2align	2                               // -- Begin function stbi__start_write_file
	.type	stbi__start_write_file,@function
stbi__start_write_file:                 // @stbi__start_write_file
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fopen
	str	x0, [sp, #8]
	ldur	x0, [x29, #-8]
	adrp	x8, stbi__stdio_write
	ldr	w1, [x8, :lo12:stbi__stdio_write]
	ldr	x2, [sp, #8]
	bl	stbi__start_write_callbacks
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__start_write_file, .Lfunc_end0-stbi__start_write_file
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"wb"
	.size	.L.str, 3
	.type	stbi__stdio_write,@object       // @stbi__stdio_write
	.bss
	.globl	stbi__stdio_write
	.p2align	2
stbi__stdio_write:
	.word	0                               // 0x0
	.size	stbi__stdio_write, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__start_write_file
	.addrsig_sym fopen
	.addrsig_sym stbi__start_write_callbacks
	.addrsig_sym stbi__stdio_write