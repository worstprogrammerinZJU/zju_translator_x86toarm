	.text
	.p2align	2                               // -- Begin function newline
	.type	newline,@function
newline:                                // @newline
// %bb.0:
	ret
.Lfunc_end0:
	.size	newline, .Lfunc_end0-newline
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym newline