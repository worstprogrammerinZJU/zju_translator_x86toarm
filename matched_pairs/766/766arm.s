	.text
	.globl	ledcDetachPin                   // -- Begin function ledcDetachPin
	.p2align	2
	.type	ledcDetachPin,@function
ledcDetachPin:                          // @ledcDetachPin
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	mov	w2, wzr
	mov	w1, w2
	bl	pinMatrixOutDetach
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ledcDetachPin, .Lfunc_end0-ledcDetachPin
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pinMatrixOutDetach