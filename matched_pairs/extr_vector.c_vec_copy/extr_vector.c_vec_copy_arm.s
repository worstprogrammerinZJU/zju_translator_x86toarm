	.text
	.globl	vec_copy                        // -- Begin function vec_copy
	.p2align	2
	.type	vec_copy,@function
vec_copy:                               // @vec_copy
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	do_make_vector
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	w0, [x8, #4]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #4]
	ldr	x8, [sp, #8]
	ldrsw	x9, [x8]
	mov	x8, #8
	mul	x8, x8, x9
	mov	w2, w8
	bl	memcpy
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	vec_copy, .Lfunc_end0-vec_copy
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_make_vector
	.addrsig_sym memcpy