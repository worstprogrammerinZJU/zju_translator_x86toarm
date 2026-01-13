	.text
	.globl	vec_set                         // -- Begin function vec_set
	.p2align	2
	.type	vec_set,@function
vec_set:                                // @vec_set
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #8]
	ldur	w10, [x29, #-12]
	mov	w9, wzr
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.gt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, lt
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-12]
	str	x8, [x9, x10, lsl #3]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	vec_set, .Lfunc_end0-vec_set
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert