	.text
	.p2align	2                               // -- Begin function read_unary_addr
	.type	read_unary_addr,@function
read_unary_addr:                        // @read_unary_addr
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	read_cast_expr
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, AST_FUNCDESG
	ldr	x9, [x9, :lo12:AST_FUNCDESG]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	conv
	stur	x0, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #16]
	bl	ensure_lvalue
	adrp	x8, AST_ADDR
	ldr	w8, [x8, :lo12:AST_ADDR]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	bl	make_ptr_type
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldr	x2, [sp, #16]
	bl	ast_uop
	stur	x0, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_unary_addr, .Lfunc_end0-read_unary_addr
                                        // -- End function
	.type	AST_FUNCDESG,@object            // @AST_FUNCDESG
	.bss
	.globl	AST_FUNCDESG
	.p2align	3
AST_FUNCDESG:
	.xword	0                               // 0x0
	.size	AST_FUNCDESG, 8
	.type	AST_ADDR,@object                // @AST_ADDR
	.globl	AST_ADDR
	.p2align	2
AST_ADDR:
	.word	0                               // 0x0
	.size	AST_ADDR, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_unary_addr
	.addrsig_sym read_cast_expr
	.addrsig_sym conv
	.addrsig_sym ensure_lvalue
	.addrsig_sym ast_uop
	.addrsig_sym make_ptr_type
	.addrsig_sym AST_FUNCDESG
	.addrsig_sym AST_ADDR