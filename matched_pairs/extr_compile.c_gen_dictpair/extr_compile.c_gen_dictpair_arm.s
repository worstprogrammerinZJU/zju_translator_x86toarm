	.text
	.globl	gen_dictpair                    // -- Begin function gen_dictpair
	.p2align	2
	.type	gen_dictpair,@function
gen_dictpair:                           // @gen_dictpair
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w0, [x29, #-4]
	bl	gen_subexp
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	ldr	w0, [sp, #8]
	bl	gen_subexp
	str	w0, [sp]                        // 4-byte Folded Spill
	adrp	x8, INSERT
	ldr	w0, [x8, :lo12:INSERT]
	bl	gen_op_simple
	ldr	w1, [sp]                        // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	BLOCK
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	gen_dictpair, .Lfunc_end0-gen_dictpair
                                        // -- End function
	.type	INSERT,@object                  // @INSERT
	.bss
	.globl	INSERT
	.p2align	2
INSERT:
	.word	0                               // 0x0
	.size	INSERT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym BLOCK
	.addrsig_sym gen_subexp
	.addrsig_sym gen_op_simple
	.addrsig_sym INSERT