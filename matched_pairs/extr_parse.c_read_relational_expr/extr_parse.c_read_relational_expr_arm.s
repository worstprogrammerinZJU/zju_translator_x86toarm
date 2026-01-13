	.text
	.p2align	2                               // -- Begin function read_relational_expr
	.type	read_relational_expr,@function
read_relational_expr:                   // @read_relational_expr
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	read_shift_expr
	stur	x0, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	mov	w0, #60
	bl	next_token
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	conv
	stur	w0, [x29, #-12]                 // 4-byte Folded Spill
	bl	read_shift_expr
	bl	conv
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	mov	w2, w0
	mov	w0, #60
	bl	binop
	stur	x0, [x29, #-8]
	b	.LBB0_13
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w0, #62
	bl	next_token
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	bl	read_shift_expr
	bl	conv
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	conv
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	mov	w2, w0
	mov	w0, #60
	bl	binop
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, OP_LE
	ldrb	w0, [x8, :lo12:OP_LE]
	bl	next_token
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, OP_LE
	ldrb	w8, [x8, :lo12:OP_LE]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	conv
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	bl	read_shift_expr
	bl	conv
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	binop
	stur	x0, [x29, #-8]
	b	.LBB0_11
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, OP_GE
	ldrb	w0, [x8, :lo12:OP_GE]
	bl	next_token
	cbz	x0, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, OP_LE
	ldrb	w8, [x8, :lo12:OP_LE]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	bl	read_shift_expr
	bl	conv
	str	w0, [sp]                        // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	conv
	ldr	w1, [sp]                        // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	binop
	stur	x0, [x29, #-8]
	b	.LBB0_10
.LBB0_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, type_int
	ldr	w8, [x8, :lo12:type_int]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	.LBB0_1
.Lfunc_end0:
	.size	read_relational_expr, .Lfunc_end0-read_relational_expr
                                        // -- End function
	.type	OP_LE,@object                   // @OP_LE
	.bss
	.globl	OP_LE
OP_LE:
	.byte	0                               // 0x0
	.size	OP_LE, 1
	.type	OP_GE,@object                   // @OP_GE
	.globl	OP_GE
OP_GE:
	.byte	0                               // 0x0
	.size	OP_GE, 1
	.type	type_int,@object                // @type_int
	.globl	type_int
	.p2align	2
type_int:
	.word	0                               // 0x0
	.size	type_int, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_relational_expr
	.addrsig_sym read_shift_expr
	.addrsig_sym next_token
	.addrsig_sym binop
	.addrsig_sym conv
	.addrsig_sym OP_LE
	.addrsig_sym OP_GE
	.addrsig_sym type_int