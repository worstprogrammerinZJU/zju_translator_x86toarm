	.text
	.globl	buf_len                         // -- Begin function buf_len
	.p2align	2
	.type	buf_len,@function
buf_len:                                // @buf_len
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	buf_len, .Lfunc_end0-buf_len
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig