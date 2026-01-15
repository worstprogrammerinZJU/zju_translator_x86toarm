	.text
	.p2align	2                               // -- Begin function read_unary_expr
	.type	read_unary_expr,@function
read_unary_expr:                        // @read_unary_expr
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	get
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TKEYWORD
	ldr	x9, [x9, :lo12:TKEYWORD]
	subs	x8, x8, x9
	b.ne	.LBB0_15
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #8]
	subs	w8, w8, #33
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	subs	x8, x8, #99
	b.hi	.LBB0_14
// %bb.2:
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_3:
	bl	read_sizeof_operand
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_4:
	bl	read_alignof_operand
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_5:
	adrp	x8, OP_PRE_INC
	ldr	w0, [x8, :lo12:OP_PRE_INC]
	bl	read_unary_incdec
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_6:
	adrp	x8, OP_PRE_DEC
	ldr	w0, [x8, :lo12:OP_PRE_DEC]
	bl	read_unary_incdec
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_7:
	ldr	x0, [sp, #16]
	bl	read_label_addr
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_8:
	bl	read_unary_addr
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_9:
	ldr	x0, [sp, #16]
	bl	read_unary_deref
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_10:
	bl	read_cast_expr
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_11:
	bl	read_unary_minus
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_12:
	ldr	x0, [sp, #16]
	bl	read_unary_bitnot
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_13:
	bl	read_unary_lognot
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	ldr	x0, [sp, #16]
	bl	unget_token
	bl	read_postfix_expr
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_unary_expr, .Lfunc_end0-read_unary_expr
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_9-.Ltmp0
	.word	.LBB0_10-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_4-.Ltmp0
                                        // -- End function
	.type	TKEYWORD,@object                // @TKEYWORD
	.bss
	.globl	TKEYWORD
	.p2align	3
TKEYWORD:
	.xword	0                               // 0x0
	.size	TKEYWORD, 8
	.type	OP_PRE_INC,@object              // @OP_PRE_INC
	.globl	OP_PRE_INC
	.p2align	2
OP_PRE_INC:
	.word	0                               // 0x0
	.size	OP_PRE_INC, 4
	.type	OP_PRE_DEC,@object              // @OP_PRE_DEC
	.globl	OP_PRE_DEC
	.p2align	2
OP_PRE_DEC:
	.word	0                               // 0x0
	.size	OP_PRE_DEC, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_unary_expr
	.addrsig_sym get
	.addrsig_sym read_sizeof_operand
	.addrsig_sym read_alignof_operand
	.addrsig_sym read_unary_incdec
	.addrsig_sym read_label_addr
	.addrsig_sym read_unary_addr
	.addrsig_sym read_unary_deref
	.addrsig_sym read_cast_expr
	.addrsig_sym read_unary_minus
	.addrsig_sym read_unary_bitnot
	.addrsig_sym read_unary_lognot
	.addrsig_sym unget_token
	.addrsig_sym read_postfix_expr
	.addrsig_sym TKEYWORD
	.addrsig_sym OP_PRE_INC
	.addrsig_sym OP_PRE_DEC