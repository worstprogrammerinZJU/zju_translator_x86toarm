	.text
	.p2align	2                               // -- Begin function read_equality_expr
	.type	read_equality_expr,@function
read_equality_expr:                     // @read_equality_expr
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	bl	read_relational_expr
	stur	x0, [x29, #-16]
	adrp	x8, OP_EQ
	ldr	w0, [x8, :lo12:OP_EQ]
	bl	next_token
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, OP_EQ
	ldr	w8, [x8, :lo12:OP_EQ]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	conv
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	bl	read_equality_expr
	bl	conv
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	bl	binop
	str	x0, [sp, #24]
	b	.LBB0_6
.LBB0_2:
	adrp	x8, OP_NE
	ldr	w0, [x8, :lo12:OP_NE]
	bl	next_token
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, OP_NE
	ldr	w8, [x8, :lo12:OP_NE]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	conv
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	bl	read_equality_expr
	bl	conv
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	binop
	str	x0, [sp, #24]
	b	.LBB0_5
.LBB0_4:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_7
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	adrp	x8, type_int
	ldr	w8, [x8, :lo12:type_int]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_equality_expr, .Lfunc_end0-read_equality_expr
                                        // -- End function
	.type	OP_EQ,@object                   // @OP_EQ
	.bss
	.globl	OP_EQ
	.p2align	2
OP_EQ:
	.word	0                               // 0x0
	.size	OP_EQ, 4
	.type	OP_NE,@object                   // @OP_NE
	.globl	OP_NE
	.p2align	2
OP_NE:
	.word	0                               // 0x0
	.size	OP_NE, 4
	.type	type_int,@object                // @type_int
	.globl	type_int
	.p2align	2
type_int:
	.word	0                               // 0x0
	.size	type_int, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_equality_expr
	.addrsig_sym read_relational_expr
	.addrsig_sym next_token
	.addrsig_sym binop
	.addrsig_sym conv
	.addrsig_sym OP_EQ
	.addrsig_sym OP_NE
	.addrsig_sym type_int