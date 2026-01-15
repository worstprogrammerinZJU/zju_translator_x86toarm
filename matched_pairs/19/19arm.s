	.text
	.p2align	2                               // -- Begin function loggy_activate
	.type	loggy_activate,@function
loggy_activate:                         // @loggy_activate
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	s0, [x29, #-4]
	ldur	s0, [x29, #-4]
	fneg	s0, s0
	bl	exp
	scvtf	d0, w0
	fmov	d1, #1.00000000
	fadd	d2, d1, d0
	fmov	d0, #2.00000000
	fdiv	d0, d0, d2
	fsub	d0, d0, d1
	fcvt	s0, d0
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	loggy_activate, .Lfunc_end0-loggy_activate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym loggy_activate
	.addrsig_sym exp