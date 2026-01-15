	.text
	.globl	sum                             // -- Begin function sum
	.p2align	2
	.type	sum,@function
sum:                                    // @sum
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp]
	str	x1, [sp, #8]
	ldr	w8, [sp]
	ldr	w9, [sp, #4]
	add	w8, w8, w9
	ldr	w9, [sp, #8]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	sum, .Lfunc_end0-sum
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig