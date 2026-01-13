	.text
	.p2align	2                               // -- Begin function maybe_skip_comma
	.type	maybe_skip_comma,@function
maybe_skip_comma:                       // @maybe_skip_comma
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w0, #44
	bl	next_token
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	maybe_skip_comma, .Lfunc_end0-maybe_skip_comma
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_skip_comma
	.addrsig_sym next_token