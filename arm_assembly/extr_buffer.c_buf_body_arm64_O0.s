	.text
	.globl	buf_body                        // -- Begin function buf_body
	.p2align	2
	.type	buf_body,@function
buf_body:                               // @buf_body
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	buf_body, .Lfunc_end0-buf_body
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig