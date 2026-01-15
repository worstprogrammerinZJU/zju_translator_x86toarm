	.text
	.globl	logit                           // -- Begin function logit
	.p2align	2
	.type	logit,@function
logit:                                  // @logit
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	s0, [x29, #-4]
	ldur	s0, [x29, #-4]
	fcvt	d0, s0
	ldur	s1, [x29, #-4]
	fcvt	d2, s1
	fmov	d1, #1.00000000
	fsub	d1, d1, d2
	fdiv	d0, d0, d1
	fcvt	s0, d0
	bl	log
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	logit, .Lfunc_end0-logit
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym log