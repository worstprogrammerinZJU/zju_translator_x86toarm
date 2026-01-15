	.text
	.p2align	2                               // -- Begin function read_unary_deref
	.type	read_unary_deref,@function
read_unary_deref:                       // @read_unary_deref
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	bl	read_cast_expr
	bl	conv
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	adrp	x9, KIND_PTR
	ldr	x9, [x9, :lo12:KIND_PTR]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #8]
	bl	node2s
	mov	w2, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_FUNC
	ldr	x9, [x9, :lo12:KIND_FUNC]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_4:
	adrp	x8, AST_DEREF
	ldr	w0, [x8, :lo12:AST_DEREF]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x1, [x8, #8]
	ldr	x2, [sp, #8]
	bl	ast_uop
	stur	x0, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_unary_deref, .Lfunc_end0-read_unary_deref
                                        // -- End function
	.type	KIND_PTR,@object                // @KIND_PTR
	.bss
	.globl	KIND_PTR
	.p2align	3
KIND_PTR:
	.xword	0                               // 0x0
	.size	KIND_PTR, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pointer type expected, but got %s"
	.size	.L.str, 34
	.type	KIND_FUNC,@object               // @KIND_FUNC
	.bss
	.globl	KIND_FUNC
	.p2align	3
KIND_FUNC:
	.xword	0                               // 0x0
	.size	KIND_FUNC, 8
	.type	AST_DEREF,@object               // @AST_DEREF
	.globl	AST_DEREF
	.p2align	2
AST_DEREF:
	.word	0                               // 0x0
	.size	AST_DEREF, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_unary_deref
	.addrsig_sym conv
	.addrsig_sym read_cast_expr
	.addrsig_sym errort
	.addrsig_sym node2s
	.addrsig_sym ast_uop
	.addrsig_sym KIND_PTR
	.addrsig_sym KIND_FUNC
	.addrsig_sym AST_DEREF