	.text
	.p2align	2                               // -- Begin function read_boolean_expr
	.type	read_boolean_expr,@function
read_boolean_expr:                      // @read_boolean_expr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	read_expr
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	is_flotype
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, type_bool
	ldr	w0, [x8, :lo12:type_bool]
	ldr	x1, [sp, #8]
	bl	ast_conv
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_boolean_expr, .Lfunc_end0-read_boolean_expr
                                        // -- End function
	.type	type_bool,@object               // @type_bool
	.bss
	.globl	type_bool
	.p2align	2
type_bool:
	.word	0                               // 0x0
	.size	type_bool, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_boolean_expr
	.addrsig_sym read_expr
	.addrsig_sym is_flotype
	.addrsig_sym ast_conv
	.addrsig_sym type_bool