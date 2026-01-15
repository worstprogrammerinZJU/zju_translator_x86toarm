	.text
	.globl	minus                           // -- Begin function minus
	.p2align	2
	.type	minus,@function
minus:                                  // @minus
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w0, w8, w9
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	minus, .Lfunc_end0-minus
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig