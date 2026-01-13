	.text
	.p2align	2                               // -- Begin function peek
	.type	peek,@function
peek:                                   // @peek
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	bl	peek_token
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	peek, .Lfunc_end0-peek
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym peek
	.addrsig_sym peek_token