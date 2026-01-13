	.text
	.p2align	2                               // -- Begin function read_unary_lognot
	.type	read_unary_lognot,@function
read_unary_lognot:                      // @read_unary_lognot
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	read_cast_expr
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	conv
	str	x0, [sp, #8]
	adrp	x8, type_int
	ldr	w1, [x8, :lo12:type_int]
	ldr	x2, [sp, #8]
	mov	w0, #33
	bl	ast_uop
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_unary_lognot, .Lfunc_end0-read_unary_lognot
                                        // -- End function
	.type	type_int,@object                // @type_int
	.bss
	.globl	type_int
	.p2align	2
type_int:
	.word	0                               // 0x0
	.size	type_int, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_unary_lognot
	.addrsig_sym read_cast_expr
	.addrsig_sym conv
	.addrsig_sym ast_uop
	.addrsig_sym type_int