	.text
	.p2align	2                               // -- Begin function read_logand_expr
	.type	read_logand_expr,@function
read_logand_expr:                       // @read_logand_expr
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	read_bitor_expr
	stur	x0, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	adrp	x8, OP_LOGAND
	ldr	w0, [x8, :lo12:OP_LOGAND]
	bl	next_token
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, type_int
	ldr	w8, [x8, :lo12:type_int]
	stur	w8, [x29, #-12]                 // 4-byte Folded Spill
	adrp	x8, OP_LOGAND
	ldr	w8, [x8, :lo12:OP_LOGAND]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	bl	read_bitor_expr
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	mov	x3, x0
	ldur	w0, [x29, #-12]                 // 4-byte Folded Reload
	bl	ast_binop
	stur	x0, [x29, #-8]
	b	.LBB0_1
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_logand_expr, .Lfunc_end0-read_logand_expr
                                        // -- End function
	.type	OP_LOGAND,@object               // @OP_LOGAND
	.bss
	.globl	OP_LOGAND
	.p2align	2
OP_LOGAND:
	.word	0                               // 0x0
	.size	OP_LOGAND, 4
	.type	type_int,@object                // @type_int
	.globl	type_int
	.p2align	2
type_int:
	.word	0                               // 0x0
	.size	type_int, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_logand_expr
	.addrsig_sym read_bitor_expr
	.addrsig_sym next_token
	.addrsig_sym ast_binop
	.addrsig_sym OP_LOGAND
	.addrsig_sym type_int