	.text
	.globl	vec_push                        // -- Begin function vec_push
	.p2align	2
	.type	vec_push,@function
vec_push:                               // @vec_push
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	mov	w1, #1
	bl	extend
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	ldr	x12, [sp, #8]
	ldrsw	x10, [x12]
	mov	w11, w10
	add	w11, w11, #1
	str	w11, [x12]
	str	x8, [x9, x10, lsl #3]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	vec_push, .Lfunc_end0-vec_push
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym extend