	.text
	.globl	ptrtest1                        // -- Begin function ptrtest1
	.p2align	2
	.type	ptrtest1,@function
ptrtest1:                               // @ptrtest1
// %bb.0:
	mov	w0, #55
	ret
.Lfunc_end0:
	.size	ptrtest1, .Lfunc_end0-ptrtest1
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig