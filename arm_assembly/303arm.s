	.text
	.globl	gen_op_simple                   // -- Begin function gen_op_simple
	.p2align	2
	.type	gen_op_simple,@function
gen_op_simple:                          // @gen_op_simple
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	opcode_describe
	ldr	w8, [x0]
	subs	w8, w8, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	w0, [x29, #-4]
	bl	inst_new
	bl	inst_block
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	gen_op_simple, .Lfunc_end0-gen_op_simple
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym opcode_describe
	.addrsig_sym inst_block
	.addrsig_sym inst_new