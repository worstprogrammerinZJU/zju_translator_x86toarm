	.text
	.globl	float_to_box                    // -- Begin function float_to_box
	.p2align	2
	.type	float_to_box,@function
float_to_box:                           // @float_to_box
// %bb.0:
	sub	sp, sp, #16
	mov	x9, x8
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	xzr, [x9]
	str	xzr, [x9, #8]
	str	wzr, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w11, [sp, #4]
	mov	w10, #1
	mul	w10, w10, w11
	ldr	w8, [x8, w10, sxtw #2]
	str	w8, [x9, #4]
	ldr	x8, [sp, #8]
	ldr	w11, [sp, #4]
	mov	w10, #2
	mul	w10, w10, w11
	ldr	w8, [x8, w10, sxtw #2]
	str	w8, [x9, #8]
	ldr	x8, [sp, #8]
	ldr	w11, [sp, #4]
	mov	w10, #3
	mul	w10, w10, w11
	ldr	w8, [x8, w10, sxtw #2]
	str	w8, [x9, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	float_to_box, .Lfunc_end0-float_to_box
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig