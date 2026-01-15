	.text
	.p2align	2                               // -- Begin function linear_activate
	.type	linear_activate,@function
linear_activate:                        // @linear_activate
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	linear_activate, .Lfunc_end0-linear_activate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym linear_activate