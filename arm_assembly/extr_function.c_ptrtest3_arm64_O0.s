	.text
	.globl	ptrtest3                        // -- Begin function ptrtest3
	.p2align	2
	.type	ptrtest3,@function
ptrtest3:                               // @ptrtest3
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fmov	s1, #2.00000000
	fmul	s0, s0, s1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	ptrtest3, .Lfunc_end0-ptrtest3
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig