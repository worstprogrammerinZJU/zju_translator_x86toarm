	.text
	.globl	decNumberToString               // -- Begin function decNumberToString
	.p2align	2
	.type	decNumberToString,@function
decNumberToString:                      // @decNumberToString
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	mov	w2, wzr
	bl	decToString
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decNumberToString, .Lfunc_end0-decNumberToString
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decToString