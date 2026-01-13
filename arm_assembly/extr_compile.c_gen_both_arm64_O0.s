	.text
	.globl	gen_both                        // -- Begin function gen_both
	.p2align	2
	.type	gen_both,@function
gen_both:                               // @gen_both
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	adrp	x8, JUMP
	ldr	w0, [x8, :lo12:JUMP]
	bl	gen_op_targetlater
	stur	w0, [x29, #-12]
	adrp	x8, FORK
	ldr	w0, [x8, :lo12:FORK]
	ldur	w1, [x29, #-12]
	bl	gen_op_target
	str	w0, [sp, #16]
	ldr	w0, [sp, #16]
	ldur	w1, [x29, #-4]
	ldur	w2, [x29, #-12]
	ldur	w3, [x29, #-8]
	bl	BLOCK
	str	w0, [sp, #12]
	ldur	w0, [x29, #-12]
	ldr	w1, [sp, #12]
	bl	inst_set_target
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	gen_both, .Lfunc_end0-gen_both
                                        // -- End function
	.type	JUMP,@object                    // @JUMP
	.bss
	.globl	JUMP
	.p2align	2
JUMP:
	.word	0                               // 0x0
	.size	JUMP, 4
	.type	FORK,@object                    // @FORK
	.globl	FORK
	.p2align	2
FORK:
	.word	0                               // 0x0
	.size	FORK, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_op_targetlater
	.addrsig_sym gen_op_target
	.addrsig_sym BLOCK
	.addrsig_sym inst_set_target
	.addrsig_sym JUMP
	.addrsig_sym FORK