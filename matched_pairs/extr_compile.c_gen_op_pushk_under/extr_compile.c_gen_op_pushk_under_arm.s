	.text
	.globl	gen_op_pushk_under              // -- Begin function gen_op_pushk_under
	.p2align	2
	.type	gen_op_pushk_under,@function
gen_op_pushk_under:                     // @gen_op_pushk_under
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	adrp	x8, PUSHK_UNDER
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:PUSHK_UNDER]
	bl	opcode_describe
	ldr	w8, [x0]
	adrp	x9, OP_HAS_CONSTANT
	ldr	w9, [x9, :lo12:OP_HAS_CONSTANT]
	and	w0, w8, w9
	bl	assert
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:PUSHK_UNDER]
	bl	inst_new
	str	x0, [sp, #16]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	ldr	x0, [sp, #16]
	bl	inst_block
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	gen_op_pushk_under, .Lfunc_end0-gen_op_pushk_under
                                        // -- End function
	.type	PUSHK_UNDER,@object             // @PUSHK_UNDER
	.bss
	.globl	PUSHK_UNDER
	.p2align	2
PUSHK_UNDER:
	.word	0                               // 0x0
	.size	PUSHK_UNDER, 4
	.type	OP_HAS_CONSTANT,@object         // @OP_HAS_CONSTANT
	.globl	OP_HAS_CONSTANT
	.p2align	2
OP_HAS_CONSTANT:
	.word	0                               // 0x0
	.size	OP_HAS_CONSTANT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym opcode_describe
	.addrsig_sym inst_new
	.addrsig_sym inst_block
	.addrsig_sym PUSHK_UNDER
	.addrsig_sym OP_HAS_CONSTANT