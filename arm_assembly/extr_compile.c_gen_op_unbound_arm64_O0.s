	.text
	.globl	gen_op_unbound                  // -- Begin function gen_op_unbound
	.p2align	2
	.type	gen_op_unbound,@function
gen_op_unbound:                         // @gen_op_unbound
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	ldur	w0, [x29, #-4]
	bl	opcode_describe
	ldr	w8, [x0]
	adrp	x9, OP_HAS_BINDING
	ldr	w9, [x9, :lo12:OP_HAS_BINDING]
	and	w0, w8, w9
	bl	assert
	ldur	w0, [x29, #-4]
	bl	inst_new
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	bl	strdup
	ldr	x8, [sp, #8]
	str	w0, [x8, #4]
	ldr	x9, [sp, #8]
	mov	w8, #1
	str	w8, [x9]
	ldr	x0, [sp, #8]
	bl	inst_block
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	gen_op_unbound, .Lfunc_end0-gen_op_unbound
                                        // -- End function
	.type	OP_HAS_BINDING,@object          // @OP_HAS_BINDING
	.bss
	.globl	OP_HAS_BINDING
	.p2align	2
OP_HAS_BINDING:
	.word	0                               // 0x0
	.size	OP_HAS_BINDING, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym opcode_describe
	.addrsig_sym inst_new
	.addrsig_sym strdup
	.addrsig_sym inst_block
	.addrsig_sym OP_HAS_BINDING