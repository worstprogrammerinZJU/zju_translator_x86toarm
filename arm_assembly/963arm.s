	.text
	.p2align	2                               // -- Begin function emit_assign
	.type	emit_assign,@function
emit_assign:                            // @emit_assign
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	adrp	x9, KIND_STRUCT
	ldr	x9, [x9, :lo12:KIND_STRUCT]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	w8, [x8, #8]
	subs	w8, w8, #8
	b.le	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #8]
	bl	emit_copy_struct
	b	.LBB0_4
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	emit_expr
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	w1, [x8]
	bl	emit_load_convert
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	emit_store
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_assign, .Lfunc_end0-emit_assign
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	KIND_STRUCT,@object             // @KIND_STRUCT
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.xword	0                               // 0x0
	.size	KIND_STRUCT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_assign
	.addrsig_sym emit_copy_struct
	.addrsig_sym emit_expr
	.addrsig_sym emit_load_convert
	.addrsig_sym emit_store
	.addrsig_sym SAVE
	.addrsig_sym KIND_STRUCT