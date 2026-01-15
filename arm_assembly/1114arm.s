	.text
	.globl	make_empty_image                // -- Begin function make_empty_image
	.p2align	2
	.type	make_empty_image,@function
make_empty_image:                       // @make_empty_image
// %bb.0:
	sub	sp, sp, #16
	mov	x9, x8
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	str	w2, [sp, #4]
	str	xzr, [x9, #16]
	ldr	w8, [sp, #8]
	str	w8, [x9]
	ldr	w8, [sp, #12]
	str	w8, [x9, #4]
	ldr	w8, [sp, #4]
	str	w8, [x9, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	make_empty_image, .Lfunc_end0-make_empty_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig