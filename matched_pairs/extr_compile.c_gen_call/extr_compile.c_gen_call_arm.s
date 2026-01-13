	.text
	.globl	gen_call                        // -- Begin function gen_call
	.p2align	2
	.type	gen_call,@function
gen_call:                               // @gen_call
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x1, [sp, #16]
	str	x0, [sp, #8]
	adrp	x8, CALL_JQ
	ldr	w0, [x8, :lo12:CALL_JQ]
	ldr	x1, [sp, #8]
	bl	gen_op_unbound
	stur	x0, [x29, #-8]
	ldur	x9, [x29, #-8]
	ldr	x8, [sp, #16]
	str	x8, [x9]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	block_count_actuals
	ldur	x8, [x29, #-8]
	str	w0, [x8, #8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	gen_call, .Lfunc_end0-gen_call
                                        // -- End function
	.type	CALL_JQ,@object                 // @CALL_JQ
	.bss
	.globl	CALL_JQ
	.p2align	2
CALL_JQ:
	.word	0                               // 0x0
	.size	CALL_JQ, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_op_unbound
	.addrsig_sym block_count_actuals
	.addrsig_sym CALL_JQ