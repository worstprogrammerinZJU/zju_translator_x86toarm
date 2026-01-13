	.text
	.globl	dintersect                      // -- Begin function dintersect
	.p2align	2
	.type	dintersect,@function
dintersect:                             // @dintersect
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #40]
	ldur	w0, [x29, #-20]
	ldur	w1, [x29, #-24]
	ldr	w2, [sp, #44]
	ldr	w3, [sp, #40]
	bl	overlap
	str	s0, [sp, #28]
	ldur	w0, [x29, #-28]
	ldur	w1, [x29, #-32]
	ldr	w2, [sp, #36]
	ldr	w3, [sp, #32]
	bl	overlap
	str	s0, [sp, #24]
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #32]
	ldr	x3, [sp, #40]
	bl	derivative
	str	s0, [sp, #8]
	str	s1, [sp, #12]
	str	s2, [sp, #16]
	str	s3, [sp, #20]
	ldr	s0, [sp, #8]
	ldr	s1, [sp, #24]
	fmul	s0, s0, s1
	stur	s0, [x29, #-16]
	ldr	s0, [sp, #12]
	ldr	s1, [sp, #24]
	fmul	s0, s0, s1
	stur	s0, [x29, #-12]
	ldr	s0, [sp, #16]
	ldr	s1, [sp, #28]
	fmul	s0, s0, s1
	stur	s0, [x29, #-8]
	ldr	s0, [sp, #20]
	ldr	s1, [sp, #28]
	fmul	s0, s0, s1
	stur	s0, [x29, #-4]
	ldur	s0, [x29, #-16]
	ldur	s1, [x29, #-12]
	ldur	s2, [x29, #-8]
	ldur	s3, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	dintersect, .Lfunc_end0-dintersect
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym overlap
	.addrsig_sym derivative