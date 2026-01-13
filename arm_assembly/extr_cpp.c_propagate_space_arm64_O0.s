	.text
	.p2align	2                               // -- Begin function propagate_space
	.type	propagate_space,@function
propagate_space:                        // @propagate_space
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	vec_len
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	ldur	x0, [x29, #-8]
	bl	vec_head
	bl	copy_token
	str	x0, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldur	x0, [x29, #-8]
	ldr	x2, [sp, #8]
	mov	w1, wzr
	bl	vec_set
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	propagate_space, .Lfunc_end0-propagate_space
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym propagate_space
	.addrsig_sym vec_len
	.addrsig_sym copy_token
	.addrsig_sym vec_head
	.addrsig_sym vec_set