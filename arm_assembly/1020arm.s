	.text
	.p2align	2                               // -- Begin function emit_ternary
	.type	emit_ternary,@function
emit_ternary:                           // @emit_ternary
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #16]
	bl	emit_expr
	bl	make_label
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	emit_je
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	bl	emit_expr
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	bl	make_label
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	emit_jmp
	ldr	x0, [sp, #16]
	bl	emit_label
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	emit_expr
	ldr	x0, [sp, #8]
	bl	emit_label
	b	.LBB0_5
.LBB0_4:
	ldr	x0, [sp, #16]
	bl	emit_label
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	emit_ternary, .Lfunc_end0-emit_ternary
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_ternary
	.addrsig_sym emit_expr
	.addrsig_sym make_label
	.addrsig_sym emit_je
	.addrsig_sym emit_jmp
	.addrsig_sym emit_label
	.addrsig_sym SAVE