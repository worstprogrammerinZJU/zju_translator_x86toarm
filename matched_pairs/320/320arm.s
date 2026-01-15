	.text
	.globl	inst_set_target                 // -- Begin function inst_set_target
	.p2align	2
	.type	inst_set_target,@function
inst_set_target:                        // @inst_set_target
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	x2, [sp]
	str	x3, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	block_is_single
	bl	assert
	ldr	x8, [sp, #24]
	ldr	w0, [x8, #4]
	bl	opcode_describe
	ldr	w8, [x0]
	adrp	x9, OP_HAS_BRANCH
	ldr	w9, [x9, :lo12:OP_HAS_BRANCH]
	and	w0, w8, w9
	bl	assert
	ldr	w0, [sp]
	bl	assert
	ldr	w8, [sp]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	inst_set_target, .Lfunc_end0-inst_set_target
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
	.addrsig_sym block_is_single
	.addrsig_sym opcode_describe
	.addrsig_sym OP_HAS_BRANCH