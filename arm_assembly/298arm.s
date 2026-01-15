	.text
	.globl	gen_noop                        // -- Begin function gen_noop
	.p2align	2
	.type	gen_noop,@function
gen_noop:                               // @gen_noop
// %bb.0:
	sub	sp, sp, #16
	str	xzr, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	gen_noop, .Lfunc_end0-gen_noop
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig