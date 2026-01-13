	.text
	.p2align	2                               // -- Begin function emit_padding
	.type	emit_padding,@function
emit_padding:                           // @emit_padding
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	str	w8, [sp]
	ldr	w8, [sp]
	subs	w8, w8, #0
	cset	w8, ge
	and	w0, w8, #0x1
	bl	assert
	ldr	w0, [sp]
	bl	emit_zero
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_padding, .Lfunc_end0-emit_padding
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
	.addrsig_sym emit_padding
	.addrsig_sym assert
	.addrsig_sym emit_zero
	.addrsig_sym SAVE