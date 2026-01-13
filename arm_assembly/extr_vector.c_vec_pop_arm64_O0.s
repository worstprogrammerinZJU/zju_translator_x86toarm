	.text
	.globl	vec_pop                         // -- Begin function vec_pop
	.p2align	2
	.type	vec_pop,@function
vec_pop:                                // @vec_pop
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, hi
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x10, [sp, #8]
	ldr	x9, [x10]
	subs	x9, x9, #1
	str	x9, [x10]
	ldr	x0, [x8, x9, lsl #3]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	vec_pop, .Lfunc_end0-vec_pop
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert