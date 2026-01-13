	.text
	.globl	booltest1                       // -- Begin function booltest1
	.p2align	2
	.type	booltest1,@function
booltest1:                              // @booltest1
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	booltest1, .Lfunc_end0-booltest1
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig