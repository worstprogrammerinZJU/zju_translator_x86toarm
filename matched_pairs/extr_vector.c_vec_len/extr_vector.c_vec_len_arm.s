	.text
	.globl	vec_len                         // -- Begin function vec_len
	.p2align	2
	.type	vec_len,@function
vec_len:                                // @vec_len
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	vec_len, .Lfunc_end0-vec_len
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig