	.text
	.p2align	2                               // -- Begin function empty2
	.type	empty2,@function
empty2:                                 // @empty2
// %bb.0:
	ret
.Lfunc_end0:
	.size	empty2, .Lfunc_end0-empty2
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym empty2