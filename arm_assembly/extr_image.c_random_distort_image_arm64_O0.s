	.text
	.globl	random_distort_image            // -- Begin function random_distort_image
	.p2align	2
	.type	random_distort_image,@function
random_distort_image:                   // @random_distort_image
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	s0, [x29, #-8]
	stur	s1, [x29, #-12]
	str	s2, [sp, #16]
	ldur	s0, [x29, #-8]
	fneg	s0, s0
	ldur	s1, [x29, #-8]
	bl	rand_uniform
	str	s0, [sp, #12]
	ldur	s0, [x29, #-12]
	bl	rand_scale
	str	s0, [sp, #8]
	ldr	s0, [sp, #16]
	bl	rand_scale
	str	s0, [sp, #4]
	ldur	w0, [x29, #-4]
	ldr	s0, [sp, #12]
	ldr	s1, [sp, #8]
	ldr	s2, [sp, #4]
	bl	distort_image
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	random_distort_image, .Lfunc_end0-random_distort_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand_uniform
	.addrsig_sym rand_scale
	.addrsig_sym distort_image