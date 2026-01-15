	.text
	.p2align	2                               // -- Begin function invert_initial_buffer
	.type	invert_initial_buffer,@function
invert_initial_buffer:                  // @invert_initial_buffer
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	w3, [sp, #20]
	str	x4, [sp, #8]
	str	x5, [sp]
	mov	w0, wzr
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	invert_initial_buffer, .Lfunc_end0-invert_initial_buffer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym invert_initial_buffer