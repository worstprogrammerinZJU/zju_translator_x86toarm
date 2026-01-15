	.text
	.p2align	2                               // -- Begin function gen_index_opt
	.type	gen_index_opt,@function
gen_index_opt:                          // @gen_index_opt
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldr	w0, [sp, #8]
	bl	gen_subexp
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	ldur	w8, [x29, #-4]
	str	w8, [sp]                        // 4-byte Folded Spill
	adrp	x8, INDEX_OPT
	ldr	w0, [x8, :lo12:INDEX_OPT]
	bl	gen_op_simple
	ldr	w1, [sp]                        // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	BLOCK
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	gen_index_opt, .Lfunc_end0-gen_index_opt
                                        // -- End function
	.type	INDEX_OPT,@object               // @INDEX_OPT
	.bss
	.globl	INDEX_OPT
	.p2align	2
INDEX_OPT:
	.word	0                               // 0x0
	.size	INDEX_OPT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_index_opt
	.addrsig_sym BLOCK
	.addrsig_sym gen_subexp
	.addrsig_sym gen_op_simple
	.addrsig_sym INDEX_OPT