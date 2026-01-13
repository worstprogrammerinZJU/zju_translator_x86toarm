	.text
	.globl	vec_append                      // -- Begin function vec_append
	.p2align	2
	.type	vec_append,@function
vec_append:                             // @vec_append
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	w1, [x8]
	bl	extend
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #8]
	ldr	w9, [x9]
	add	w0, w8, w9
	ldr	x8, [sp]
	ldr	w1, [x8, #4]
	ldr	x8, [sp]
	ldrsw	x9, [x8]
	mov	x8, #8
	mul	x8, x8, x9
	mov	w2, w8
	bl	memcpy
	ldr	x8, [sp]
	ldr	w10, [x8]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	vec_append, .Lfunc_end0-vec_append
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym extend
	.addrsig_sym memcpy