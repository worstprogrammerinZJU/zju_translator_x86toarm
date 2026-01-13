	.text
	.globl	t8                              // -- Begin function t8
	.p2align	2
	.type	t8,@function
t8:                                     // @t8
// %bb.0:
	sub	sp, sp, #208
	stp	x29, x30, [sp, #192]            // 16-byte Folded Spill
	add	x29, sp, #192
	str	q7, [sp, #112]
	str	q6, [sp, #96]
	str	q5, [sp, #80]
	str	q4, [sp, #64]
	str	q3, [sp, #48]
	str	q2, [sp, #32]
	str	q1, [sp, #16]
	str	q0, [sp]
	stur	x7, [x29, #-16]
	stur	x6, [x29, #-24]
	stur	x5, [x29, #-32]
	stur	x4, [x29, #-40]
	stur	x3, [x29, #-48]
	stur	x2, [x29, #-56]
	stur	x1, [x29, #-64]
	stur	w0, [x29, #-8]
	ldur	w1, [x29, #-8]
	mov	w0, #23
	bl	expect
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #192]            // 16-byte Folded Reload
	add	sp, sp, #208
	ret
.Lfunc_end0:
	.size	t8, .Lfunc_end0-t8
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym expect