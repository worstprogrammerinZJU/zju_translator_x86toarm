	.text
	.p2align	2                               // -- Begin function emit_global_var
	.type	emit_global_var,@function
emit_global_var:                        // @emit_global_var
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
	ldr	x0, [sp, #8]
	mov	w2, wzr
	mov	w1, w2
	bl	emit_data
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #8]
	bl	emit_bss
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_global_var, .Lfunc_end0-emit_global_var
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
	.addrsig_sym emit_global_var
	.addrsig_sym emit_data
	.addrsig_sym emit_bss
	.addrsig_sym SAVE