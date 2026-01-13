	.text
	.globl	tf1                             // -- Begin function tf1
	.p2align	2
	.type	tf1,@function
tf1:                                    // @tf1
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	tf1, .Lfunc_end0-tf1
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig