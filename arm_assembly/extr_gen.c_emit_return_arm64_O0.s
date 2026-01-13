	.text
	.p2align	2                               // -- Begin function emit_return
	.type	emit_return,@function
emit_return:                            // @emit_return
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	emit_expr
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w0, [x8]
	bl	maybe_booleanize_retval
	b	.LBB0_2
.LBB0_2:
	bl	emit_ret
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_return, .Lfunc_end0-emit_return
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
	.addrsig_sym emit_return
	.addrsig_sym emit_expr
	.addrsig_sym maybe_booleanize_retval
	.addrsig_sym emit_ret
	.addrsig_sym SAVE