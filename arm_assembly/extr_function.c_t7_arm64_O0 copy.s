	.text
	.globl	t7                              // -- Begin function t7
	.p2align	2
	.type	t7,@function
t7:                                     // @t7
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	mul	w0, w8, w9
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	t7, .Lfunc_end0-t7
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig