	.text
	.globl	convolutional_out_height        // -- Begin function convolutional_out_height
	.p2align	2
	.type	convolutional_out_height,@function
convolutional_out_height:               // @convolutional_out_height
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp]
	str	x1, [sp, #8]
	ldr	w8, [sp]
	ldr	w10, [sp, #4]
	mov	w9, #2
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	ldr	w9, [sp, #12]
	sdiv	w8, w8, w9
	add	w0, w8, #1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	convolutional_out_height, .Lfunc_end0-convolutional_out_height
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig