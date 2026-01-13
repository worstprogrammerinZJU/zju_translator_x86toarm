	.text
	.p2align	2                               // -- Begin function read_unary_bitnot
	.type	read_unary_bitnot,@function
read_unary_bitnot:                      // @read_unary_bitnot
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	bl	read_cast_expr
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	conv
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	is_inttype
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	node2s
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w1, [x8]
	ldr	x2, [sp, #16]
	mov	w0, #126
	bl	ast_uop
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_unary_bitnot, .Lfunc_end0-read_unary_bitnot
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid use of ~: %s"
	.size	.L.str, 21
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_unary_bitnot
	.addrsig_sym read_cast_expr
	.addrsig_sym conv
	.addrsig_sym is_inttype
	.addrsig_sym errort
	.addrsig_sym node2s
	.addrsig_sym ast_uop