	.text
	.globl	tf2                             // -- Begin function tf2
	.p2align	2
	.type	tf2,@function
tf2:                                    // @tf2
// %bb.0:
	sub	sp, sp, #16
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	fcvt	s0, d0
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	tf2, .Lfunc_end0-tf2
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig