	.text
	.p2align	2                               // -- Begin function logistic_activate
	.type	logistic_activate,@function
logistic_activate:                      // @logistic_activate
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	s0, [x29, #-4]
	ldur	s0, [x29, #-4]
	fneg	s0, s0
	bl	exp
	scvtf	d1, w0
	fmov	d0, #1.00000000
	fadd	d1, d0, d1
	fdiv	d0, d0, d1
	fcvt	s0, d0
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	logistic_activate, .Lfunc_end0-logistic_activate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym logistic_activate
	.addrsig_sym exp