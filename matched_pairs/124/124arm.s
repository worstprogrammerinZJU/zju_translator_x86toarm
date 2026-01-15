	.text
	.globl	make_buffer                     // -- Begin function make_buffer
	.p2align	2
	.type	make_buffer,@function
make_buffer:                            // @make_buffer
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #24
	bl	malloc
	str	x0, [sp, #8]
	adrp	x8, INIT_SIZE
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:INIT_SIZE]
	bl	malloc
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x9, [sp, #8]
	str	x0, [x9, #16]
	ldr	w8, [x8, :lo12:INIT_SIZE]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	make_buffer, .Lfunc_end0-make_buffer
                                        // -- End function
	.type	INIT_SIZE,@object               // @INIT_SIZE
	.bss
	.globl	INIT_SIZE
	.p2align	2
INIT_SIZE:
	.word	0                               // 0x0
	.size	INIT_SIZE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym INIT_SIZE