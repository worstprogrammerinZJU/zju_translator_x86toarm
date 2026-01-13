	.text
	.globl	t1                              // -- Begin function t1
	.p2align	2
	.type	t1,@function
t1:                                     // @t1
// %bb.0:
	mov	w0, #77
	ret
.Lfunc_end0:
	.size	t1, .Lfunc_end0-t1
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig