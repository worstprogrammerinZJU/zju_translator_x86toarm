	.text
	.p2align	2                               // -- Begin function relu_activate
	.type	relu_activate,@function
relu_activate:                          // @relu_activate
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	ldr	s1, [sp, #12]
	fcmp	s1, #0.0
	cset	w8, gt
	and	w8, w8, #0x1
	scvtf	s1, w8
	fmul	s0, s0, s1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	relu_activate, .Lfunc_end0-relu_activate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym relu_activate