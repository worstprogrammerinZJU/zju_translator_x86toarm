	.text
	.globl	tisnan                          // -- Begin function tisnan
	.p2align	2
	.type	tisnan,@function
tisnan:                                 // @tisnan
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	ldr	s1, [sp, #12]
	fcmp	s0, s1
	cset	w8, ne
	and	w8, w8, #0x1
	scvtf	s0, w8
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	tisnan, .Lfunc_end0-tisnan
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig