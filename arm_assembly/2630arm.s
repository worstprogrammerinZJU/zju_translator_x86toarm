	.text
	.globl	vec_body                        // -- Begin function vec_body
	.p2align	2
	.type	vec_body,@function
vec_body:                               // @vec_body
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	vec_body, .Lfunc_end0-vec_body
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig