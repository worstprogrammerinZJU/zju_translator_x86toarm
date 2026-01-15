	.text
	.p2align	2                               // -- Begin function increment_layer
	.type	increment_layer,@function
increment_layer:                        // @increment_layer
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #4]
	mul	w8, w8, w9
	ldr	w9, [sp, #4]
	mul	w8, w8, w9
	str	w8, [sp]
	ldr	w10, [sp]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #8]
	add	w8, w8, w10
	str	w8, [x9, #8]
	ldr	w10, [sp]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #12]
	add	w8, w8, w10
	str	w8, [x9, #12]
	ldr	w10, [sp]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #16]
	add	w8, w8, w10
	str	w8, [x9, #16]
	ldr	w10, [sp]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #20]
	add	w8, w8, w10
	str	w8, [x9, #20]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	increment_layer, .Lfunc_end0-increment_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym increment_layer