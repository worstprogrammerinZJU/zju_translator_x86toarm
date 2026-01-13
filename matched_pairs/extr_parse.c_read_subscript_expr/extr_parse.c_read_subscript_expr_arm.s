	.text
	.p2align	2                               // -- Begin function read_subscript_expr
	.type	read_subscript_expr,@function
read_subscript_expr:                    // @read_subscript_expr
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	bl	peek
	stur	x0, [x29, #-16]
	bl	read_expr
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	mov	w0, #93
	bl	expect
	ldur	x0, [x29, #-8]
	bl	conv
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	conv
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	mov	w0, #43
	bl	binop
	str	x0, [sp, #16]
	adrp	x8, AST_DEREF
	ldr	w0, [x8, :lo12:AST_DEREF]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w1, [x8]
	ldr	x2, [sp, #16]
	bl	ast_uop
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_subscript_expr, .Lfunc_end0-read_subscript_expr
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"subscription expected"
	.size	.L.str, 22
	.type	AST_DEREF,@object               // @AST_DEREF
	.bss
	.globl	AST_DEREF
	.p2align	2
AST_DEREF:
	.word	0                               // 0x0
	.size	AST_DEREF, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_subscript_expr
	.addrsig_sym peek
	.addrsig_sym read_expr
	.addrsig_sym errort
	.addrsig_sym expect
	.addrsig_sym binop
	.addrsig_sym conv
	.addrsig_sym ast_uop
	.addrsig_sym AST_DEREF