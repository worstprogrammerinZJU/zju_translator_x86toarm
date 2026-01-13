	.text
	.p2align	2                               // -- Begin function empty
	.type	empty,@function
empty:                                  // @empty
// %bb.0:
	ret
.Lfunc_end0:
	.size	empty, .Lfunc_end0-empty
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym empty