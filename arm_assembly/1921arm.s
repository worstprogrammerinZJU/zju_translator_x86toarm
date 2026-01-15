	.text
	.p2align	2                               // -- Begin function read_shift_expr
	.type	read_shift_expr,@function
read_shift_expr:                        // @read_shift_expr
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	bl	read_additive_expr
	stur	x0, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	adrp	x8, OP_SAL
	ldr	w0, [x8, :lo12:OP_SAL]
	bl	next_token
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, OP_SAL
	ldr	w8, [x8, :lo12:OP_SAL]
	stur	w8, [x29, #-12]
	b	.LBB0_10
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, OP_SAR
	ldr	w0, [x8, :lo12:OP_SAR]
	bl	next_token
	cbz	x0, .LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, OP_SHR
	ldr	w8, [x8, :lo12:OP_SHR]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, OP_SAR
	ldr	w8, [x8, :lo12:OP_SAR]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	stur	w8, [x29, #-12]
	b	.LBB0_9
.LBB0_8:
	b	.LBB0_11
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	bl	read_additive_expr
	str	x0, [sp, #24]
	ldur	x0, [x29, #-8]
	bl	ensure_inttype
	ldr	x0, [sp, #24]
	bl	ensure_inttype
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	w8, [x29, #-12]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	conv
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	conv
	ldr	w1, [sp]                        // 4-byte Folded Reload
	ldr	w2, [sp, #4]                    // 4-byte Folded Reload
	mov	w3, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	ast_binop
	stur	x0, [x29, #-8]
	b	.LBB0_1
.LBB0_11:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_shift_expr, .Lfunc_end0-read_shift_expr
                                        // -- End function
	.type	OP_SAL,@object                  // @OP_SAL
	.bss
	.globl	OP_SAL
	.p2align	2
OP_SAL:
	.word	0                               // 0x0
	.size	OP_SAL, 4
	.type	OP_SAR,@object                  // @OP_SAR
	.globl	OP_SAR
	.p2align	2
OP_SAR:
	.word	0                               // 0x0
	.size	OP_SAR, 4
	.type	OP_SHR,@object                  // @OP_SHR
	.globl	OP_SHR
	.p2align	2
OP_SHR:
	.word	0                               // 0x0
	.size	OP_SHR, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_shift_expr
	.addrsig_sym read_additive_expr
	.addrsig_sym next_token
	.addrsig_sym ensure_inttype
	.addrsig_sym ast_binop
	.addrsig_sym conv
	.addrsig_sym OP_SAL
	.addrsig_sym OP_SAR
	.addrsig_sym OP_SHR