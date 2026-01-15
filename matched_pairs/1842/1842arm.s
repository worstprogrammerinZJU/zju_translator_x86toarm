	.text
	.p2align	2                               // -- Begin function maybe_read_brace
	.type	maybe_read_brace,@function
maybe_read_brace:                       // @maybe_read_brace
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w0, #123
	bl	next_token
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	maybe_read_brace, .Lfunc_end0-maybe_read_brace
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_read_brace
	.addrsig_sym next_token