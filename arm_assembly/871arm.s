	.text
	.globl	jq_halted                       // -- Begin function jq_halted
	.p2align	2
	.type	jq_halted,@function
jq_halted:                              // @jq_halted
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	jq_halted, .Lfunc_end0-jq_halted
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig