	.text
	.globl	gen_param_regular               // -- Begin function gen_param_regular
	.p2align	2
	.type	gen_param_regular,@function
gen_param_regular:                      // @gen_param_regular
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	adrp	x8, CLOSURE_PARAM_REGULAR
	ldr	w0, [x8, :lo12:CLOSURE_PARAM_REGULAR]
	ldr	x1, [sp, #8]
	bl	gen_op_unbound
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	gen_param_regular, .Lfunc_end0-gen_param_regular
                                        // -- End function
	.type	CLOSURE_PARAM_REGULAR,@object   // @CLOSURE_PARAM_REGULAR
	.bss
	.globl	CLOSURE_PARAM_REGULAR
	.p2align	2
CLOSURE_PARAM_REGULAR:
	.word	0                               // 0x0
	.size	CLOSURE_PARAM_REGULAR, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_op_unbound
	.addrsig_sym CLOSURE_PARAM_REGULAR