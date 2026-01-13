	.text
	.globl	sigmaDeltaDetachPin             // -- Begin function sigmaDeltaDetachPin
	.p2align	2
	.type	sigmaDeltaDetachPin,@function
sigmaDeltaDetachPin:                    // @sigmaDeltaDetachPin
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
	.size	sigmaDeltaDetachPin, .Lfunc_end0-sigmaDeltaDetachPin
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pinMatrixOutDetach