	.text
	.globl	copy_image_into                 // -- Begin function copy_image_into
	.p2align	2
	.type	copy_image_into,@function
copy_image_into:                        // @copy_image_into
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	x2, [sp]
	str	x3, [sp, #8]
	ldr	w0, [sp, #12]
	ldr	w1, [sp, #28]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #20]
	mul	w8, w8, w9
	ldr	w9, [sp, #24]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w2, w8
	bl	memcpy
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	copy_image_into, .Lfunc_end0-copy_image_into
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memcpy