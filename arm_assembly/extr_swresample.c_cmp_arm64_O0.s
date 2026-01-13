	.text
	.p2align	2                               // -- Begin function cmp
	.type	cmp,@function
cmp:                                    // @cmp
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp]
	ldr	w9, [x9]
	subs	w0, w8, w9
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	cmp, .Lfunc_end0-cmp
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cmp