	.text
	.globl	ptrtest2                        // -- Begin function ptrtest2
	.p2align	2
	.type	ptrtest2,@function
ptrtest2:                               // @ptrtest2
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	lsl	w0, w8, #1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	ptrtest2, .Lfunc_end0-ptrtest2
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig