	.text
	.globl	gen_op_target                   // -- Begin function gen_op_target
	.p2align	2
	.type	gen_op_target,@function
gen_op_target:                          // @gen_op_target
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w8, w1
	stur	w8, [x29, #-8]
	stur	w0, [x29, #-12]
	ldur	w0, [x29, #-12]
	bl	opcode_describe
	ldr	w8, [x0]
	adrp	x9, OP_HAS_BRANCH
	ldr	w9, [x9, :lo12:OP_HAS_BRANCH]
	and	w0, w8, w9
	bl	assert
	ldur	w0, [x29, #-8]
	bl	assert
	ldur	w0, [x29, #-12]
	bl	inst_new
	str	x0, [sp, #8]
	ldur	w8, [x29, #-8]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x0, [sp, #8]
	bl	inst_block
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	gen_op_target, .Lfunc_end0-gen_op_target
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