	.text
	.globl	gen_op_targetlater              // -- Begin function gen_op_targetlater
	.p2align	2
	.type	gen_op_targetlater,@function
gen_op_targetlater:                     // @gen_op_targetlater
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	opcode_describe
	ldr	w8, [x0]
	adrp	x9, OP_HAS_BRANCH
	ldr	w9, [x9, :lo12:OP_HAS_BRANCH]
	and	w0, w8, w9
	bl	assert
	ldur	w0, [x29, #-4]
	bl	inst_new
	str	x0, [sp]
	ldr	x8, [sp]
	str	xzr, [x8]
	ldr	x0, [sp]
	bl	inst_block
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	gen_op_targetlater, .Lfunc_end0-gen_op_targetlater
                                        // -- End function
	.type	OP_HAS_BRANCH,@object           // @OP_HAS_BRANCH
	.bss
	.globl	OP_HAS_BRANCH
	.p2align	2
OP_HAS_BRANCH:
	.word	0                               // 0x0
	.size	OP_HAS_BRANCH, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym opcode_describe
	.addrsig_sym inst_new
	.addrsig_sym inst_block
	.addrsig_sym OP_HAS_BRANCH