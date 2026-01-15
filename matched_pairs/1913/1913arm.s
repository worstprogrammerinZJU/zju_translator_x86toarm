	.text
	.p2align	2                               // -- Begin function read_postfix_expr_tail
	.type	read_postfix_expr_tail,@function
read_postfix_expr_tail:                 // @read_postfix_expr_tail
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_23
.LBB0_2:
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	mov	w0, #40
	bl	next_token
	cbz	x0, .LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	bl	peek
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-16]
	bl	conv
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	adrp	x9, KIND_PTR
	ldr	x9, [x9, :lo12:KIND_PTR]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_FUNC
	ldr	x9, [x9, :lo12:KIND_FUNC]
	subs	x8, x8, x9
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	node2s
	mov	x2, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x0, [x29, #-16]
	bl	read_funcall
	stur	x0, [x29, #-16]
	b	.LBB0_3
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	mov	w0, #91
	bl	next_token
	cbz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x0, [x29, #-16]
	bl	read_subscript_expr
	stur	x0, [x29, #-16]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_3 Depth=1
	mov	w0, #46
	bl	next_token
	cbz	x0, .LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	x0, [x29, #-16]
	bl	read_struct_field
	stur	x0, [x29, #-16]
	b	.LBB0_3
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=1
	adrp	x8, OP_ARROW
	ldrb	w0, [x8, :lo12:OP_ARROW]
	bl	next_token
	cbz	x0, .LBB0_16
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	adrp	x9, KIND_PTR
	ldr	x9, [x9, :lo12:KIND_PTR]
	subs	x8, x8, x9
	b.eq	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	ty2s
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	node2s
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	x2, x0
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	error
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_3 Depth=1
	adrp	x8, AST_DEREF
	ldr	w0, [x8, :lo12:AST_DEREF]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-16]
	bl	ast_uop
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	read_struct_field
	stur	x0, [x29, #-16]
	b	.LBB0_3
.LBB0_16:
	bl	peek
	str	x0, [sp, #24]
	adrp	x8, OP_INC
	ldrb	w0, [x8, :lo12:OP_INC]
	bl	next_token
	cbnz	x0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	adrp	x8, OP_DEC
	ldrb	w0, [x8, :lo12:OP_DEC]
	bl	next_token
	cbz	x0, .LBB0_22
	b	.LBB0_18
.LBB0_18:
	ldur	x0, [x29, #-16]
	bl	ensure_lvalue
	ldr	x0, [sp, #24]
	adrp	x8, OP_INC
	ldrb	w1, [x8, :lo12:OP_INC]
	bl	is_keyword
	cbz	x0, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	adrp	x8, OP_POST_INC
	ldr	w8, [x8, :lo12:OP_POST_INC]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_21
.LBB0_20:
	adrp	x8, OP_POST_DEC
	ldr	w8, [x8, :lo12:OP_POST_DEC]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_21
.LBB0_21:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	str	w8, [sp, #20]
	ldr	w0, [sp, #20]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8]
	ldur	x2, [x29, #-16]
	bl	ast_uop
	stur	x0, [x29, #-8]
	b	.LBB0_23
.LBB0_22:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_23
.LBB0_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	read_postfix_expr_tail, .Lfunc_end0-read_postfix_expr_tail
                                        // -- End function
	.type	KIND_PTR,@object                // @KIND_PTR
	.bss
	.globl	KIND_PTR
	.p2align	3
KIND_PTR:
	.xword	0                               // 0x0
	.size	KIND_PTR, 8
	.type	KIND_FUNC,@object               // @KIND_FUNC
	.globl	KIND_FUNC
	.p2align	3
KIND_FUNC:
	.xword	0                               // 0x0
	.size	KIND_FUNC, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"function expected, but got %s"
	.size	.L.str, 30
	.type	OP_ARROW,@object                // @OP_ARROW
	.bss
	.globl	OP_ARROW
OP_ARROW:
	.byte	0                               // 0x0
	.size	OP_ARROW, 1
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"pointer type expected, but got %s %s"
	.size	.L.str.1, 37
	.type	AST_DEREF,@object               // @AST_DEREF
	.bss
	.globl	AST_DEREF
	.p2align	2
AST_DEREF:
	.word	0                               // 0x0
	.size	AST_DEREF, 4
	.type	OP_INC,@object                  // @OP_INC
	.globl	OP_INC
OP_INC:
	.byte	0                               // 0x0
	.size	OP_INC, 1
	.type	OP_DEC,@object                  // @OP_DEC
	.globl	OP_DEC
OP_DEC:
	.byte	0                               // 0x0
	.size	OP_DEC, 1
	.type	OP_POST_INC,@object             // @OP_POST_INC
	.globl	OP_POST_INC
	.p2align	2
OP_POST_INC:
	.word	0                               // 0x0
	.size	OP_POST_INC, 4
	.type	OP_POST_DEC,@object             // @OP_POST_DEC
	.globl	OP_POST_DEC
	.p2align	2
OP_POST_DEC:
	.word	0                               // 0x0
	.size	OP_POST_DEC, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_postfix_expr_tail
	.addrsig_sym next_token
	.addrsig_sym peek
	.addrsig_sym conv
	.addrsig_sym errort
	.addrsig_sym node2s
	.addrsig_sym read_funcall
	.addrsig_sym read_subscript_expr
	.addrsig_sym read_struct_field
	.addrsig_sym error
	.addrsig_sym ty2s
	.addrsig_sym ast_uop
	.addrsig_sym ensure_lvalue
	.addrsig_sym is_keyword
	.addrsig_sym KIND_PTR
	.addrsig_sym KIND_FUNC
	.addrsig_sym OP_ARROW
	.addrsig_sym AST_DEREF
	.addrsig_sym OP_INC
	.addrsig_sym OP_DEC
	.addrsig_sym OP_POST_INC
	.addrsig_sym OP_POST_DEC