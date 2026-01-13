	.text
	.globl	t4a                             // -- Begin function t4a
	.p2align	2
	.type	t4a,@function
t4a:                                    // @t4a
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	t4a, .Lfunc_end0-t4a
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig