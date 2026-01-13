	.text
	.p2align	2                               // -- Begin function emit_goto
	.type	emit_goto,@function
emit_goto:                              // @emit_goto
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	assert
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	emit_jmp
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_goto, .Lfunc_end0-emit_goto
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
	.addrsig_sym emit_goto
	.addrsig_sym assert
	.addrsig_sym emit_jmp
	.addrsig_sym SAVE