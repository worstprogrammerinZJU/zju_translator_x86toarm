	.text
	.p2align	2                               // -- Begin function make_switch_jump
	.type	make_switch_jump,@function
make_switch_jump:                       // @make_switch_jump
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, type_int
	ldr	w9, [x8, :lo12:type_int]
	stur	w9, [x29, #-44]                 // 4-byte Folded Spill
	adrp	x9, OP_EQ
	ldr	w9, [x9, :lo12:OP_EQ]
	stur	w9, [x29, #-60]                 // 4-byte Folded Spill
	ldur	x9, [x29, #-8]
	stur	x9, [x29, #-56]                 // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:type_int]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8]
	bl	ast_inttype
	ldur	w1, [x29, #-60]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-56]                 // 8-byte Folded Reload
	mov	x3, x0
	ldur	w0, [x29, #-44]                 // 4-byte Folded Reload
	bl	ast_binop
	stur	x0, [x29, #-24]
	b	.LBB0_3
.LBB0_2:
	adrp	x8, type_int
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	ldr	w9, [x8, :lo12:type_int]
	str	w9, [sp, #20]                   // 4-byte Folded Spill
	adrp	x9, OP_LE
	str	x9, [sp, #24]                   // 8-byte Folded Spill
	ldr	w9, [x9, :lo12:OP_LE]
	str	w9, [sp, #16]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:type_int]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8]
	bl	ast_inttype
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	mov	x2, x0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	ldur	x3, [x29, #-8]
	bl	ast_binop
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	stur	x0, [x29, #-32]
	ldr	w10, [x8, :lo12:type_int]
	str	w10, [sp, #52]                  // 4-byte Folded Spill
	ldr	w9, [x9, :lo12:OP_LE]
	str	w9, [sp, #36]                   // 4-byte Folded Spill
	ldur	x9, [x29, #-8]
	str	x9, [sp, #40]                   // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:type_int]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	bl	ast_inttype
	ldr	w1, [sp, #36]                   // 4-byte Folded Reload
	ldr	x2, [sp, #40]                   // 8-byte Folded Reload
	mov	x3, x0
	ldr	w0, [sp, #52]                   // 4-byte Folded Reload
	bl	ast_binop
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	stur	x0, [x29, #-40]
	ldr	w0, [x8, :lo12:type_int]
	adrp	x8, OP_LOGAND
	ldr	w1, [x8, :lo12:OP_LOGAND]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	bl	ast_binop
	stur	x0, [x29, #-24]
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #16]
	bl	ast_jump
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	mov	x2, xzr
	bl	ast_if
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	make_switch_jump, .Lfunc_end0-make_switch_jump
                                        // -- End function
	.type	type_int,@object                // @type_int
	.bss
	.globl	type_int
	.p2align	2
type_int:
	.word	0                               // 0x0
	.size	type_int, 4
	.type	OP_EQ,@object                   // @OP_EQ
	.globl	OP_EQ
	.p2align	2
OP_EQ:
	.word	0                               // 0x0
	.size	OP_EQ, 4
	.type	OP_LE,@object                   // @OP_LE
	.globl	OP_LE
	.p2align	2
OP_LE:
	.word	0                               // 0x0
	.size	OP_LE, 4
	.type	OP_LOGAND,@object               // @OP_LOGAND
	.globl	OP_LOGAND
	.p2align	2
OP_LOGAND:
	.word	0                               // 0x0
	.size	OP_LOGAND, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_switch_jump
	.addrsig_sym ast_binop
	.addrsig_sym ast_inttype
	.addrsig_sym ast_if
	.addrsig_sym ast_jump
	.addrsig_sym type_int
	.addrsig_sym OP_EQ
	.addrsig_sym OP_LE
	.addrsig_sym OP_LOGAND