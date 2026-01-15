	.text
	.p2align	2                               // -- Begin function cmpinit
	.type	cmpinit,@function
cmpinit:                                // @cmpinit
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp]
	ldr	w9, [x9]
	subs	w0, w8, w9
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	cmpinit, .Lfunc_end0-cmpinit
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cmpinit