	.text
	.p2align	2                               // -- Begin function yy_top_state
	.type	yy_top_state,@function
yy_top_state:                           // @yy_top_state
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	ldr	x9, [sp]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	w0, [x8, w9, sxtw #2]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	yy_top_state, .Lfunc_end0-yy_top_state
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_top_state