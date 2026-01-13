	.text
	.globl	td2                             // -- Begin function td2
	.p2align	2
	.type	td2,@function
td2:                                    // @td2
// %bb.0:
	sub	sp, sp, #16
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	td2, .Lfunc_end0-td2
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig