	.text
	.globl	td1                             // -- Begin function td1
	.p2align	2
	.type	td1,@function
td1:                                    // @td1
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fcvt	d0, s0
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	td1, .Lfunc_end0-td1
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig