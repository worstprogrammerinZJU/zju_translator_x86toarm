	.text
	.p2align	2                               // -- Begin function emit_gvar
	.type	emit_gvar,@function
emit_gvar:                              // @emit_gvar
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #4]
	ldr	x8, [sp, #8]
	ldr	w1, [x8]
	mov	w2, wzr
	bl	emit_gload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_gvar, .Lfunc_end0-emit_gvar
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
	.addrsig_sym emit_gvar
	.addrsig_sym emit_gload
	.addrsig_sym SAVE