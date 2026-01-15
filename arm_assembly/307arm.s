	.text
	.globl	gen_op_var_fresh                // -- Begin function gen_op_var_fresh
	.p2align	2
	.type	gen_op_var_fresh,@function
gen_op_var_fresh:                       // @gen_op_var_fresh
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-12]
	str	x1, [sp, #8]
	ldur	w0, [x29, #-12]
	bl	opcode_describe
	ldr	w8, [x0]
	adrp	x9, OP_HAS_VARIABLE
	ldr	w9, [x9, :lo12:OP_HAS_VARIABLE]
	and	w0, w8, w9
	bl	assert
	ldur	w0, [x29, #-12]
	ldr	x1, [sp, #8]
	bl	gen_op_unbound
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-8]
	str	x8, [x9]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	gen_op_var_fresh, .Lfunc_end0-gen_op_var_fresh
                                        // -- End function
	.type	OP_HAS_VARIABLE,@object         // @OP_HAS_VARIABLE
	.bss
	.globl	OP_HAS_VARIABLE
	.p2align	2
OP_HAS_VARIABLE:
	.word	0                               // 0x0
	.size	OP_HAS_VARIABLE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym opcode_describe
	.addrsig_sym gen_op_unbound
	.addrsig_sym OP_HAS_VARIABLE