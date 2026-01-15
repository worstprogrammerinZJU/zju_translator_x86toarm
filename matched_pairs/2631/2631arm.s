	.text
	.globl	vec_get                         // -- Begin function vec_get
	.p2align	2
	.type	vec_get,@function
vec_get:                                // @vec_get
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w10, [sp, #4]
	mov	w9, wzr
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp]                        // 4-byte Folded Spill
	b.gt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, lt
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #4]
	ldr	x0, [x8, x9, lsl #3]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	vec_get, .Lfunc_end0-vec_get
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert