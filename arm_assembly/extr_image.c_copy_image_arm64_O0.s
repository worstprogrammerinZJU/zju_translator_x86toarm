	.text
	.globl	copy_image                      // -- Begin function copy_image
	.p2align	2
	.type	copy_image,@function
copy_image:                             // @copy_image
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp]
	str	x1, [sp, #8]
	ldr	q0, [sp]
	str	q0, [sp, #16]
	ldr	w8, [sp]
	ldr	w9, [sp, #4]
	mul	w8, w8, w9
	ldr	w9, [sp, #8]
	mul	w0, w8, w9
	mov	w1, #4
	bl	calloc
	str	w0, [sp, #28]
	ldr	w0, [sp, #28]
	ldr	w1, [sp, #12]
	ldr	w8, [sp]
	ldr	w9, [sp, #4]
	mul	w8, w8, w9
	ldr	w9, [sp, #8]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w2, w8
	bl	memcpy
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	copy_image, .Lfunc_end0-copy_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym memcpy