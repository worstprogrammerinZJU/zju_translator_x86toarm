	.text
	.globl	resize_avgpool_layer            // -- Begin function resize_avgpool_layer
	.p2align	2
	.type	resize_avgpool_layer,@function
resize_avgpool_layer:                   // @resize_avgpool_layer
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	w8, [sp]
	ldr	x9, [sp, #8]
	str	w8, [x9, #4]
	ldr	w8, [sp]
	ldr	w9, [sp, #4]
	mul	w8, w8, w9
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #12]
	mul	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	resize_avgpool_layer, .Lfunc_end0-resize_avgpool_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig