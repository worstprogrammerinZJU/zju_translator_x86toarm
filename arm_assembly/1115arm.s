	.text
	.globl	make_image                      // -- Begin function make_image
	.p2align	2
	.type	make_image,@function
make_image:                             // @make_image
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	w0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	w0, [sp, #8]
	ldr	w1, [sp, #4]
	ldr	w2, [sp]
	bl	make_empty_image
	stur	w0, [x29, #-4]
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #8]
	mul	w8, w8, w9
	ldr	w9, [sp]
	mul	w0, w8, w9
	mov	w1, #4
	bl	calloc
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	make_image, .Lfunc_end0-make_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_empty_image
	.addrsig_sym calloc