	.text
	.globl	gen_op_bound                    // -- Begin function gen_op_bound
	.p2align	2
	.type	gen_op_bound,@function
gen_op_bound:                           // @gen_op_bound
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x1, [sp, #16]
	str	w0, [sp, #12]
	ldr	x0, [sp, #16]
	bl	block_is_single
	bl	assert
	ldr	w0, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #16]
	bl	gen_op_unbound
	stur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	ldur	x8, [x29, #-8]
	str	xzr, [x8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	gen_op_bound, .Lfunc_end0-gen_op_bound
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym block_is_single
	.addrsig_sym gen_op_unbound