	.text
	.globl	tf3                             // -- Begin function tf3
	.p2align	2
	.type	tf3,@function
tf3:                                    // @tf3
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	ldr	s0, [sp, #12]
	scvtf	s0, s0
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	tf3, .Lfunc_end0-tf3
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig