	.text
	.p2align	2                               // -- Begin function peek
	.type	peek,@function
peek:                                   // @peek
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	readc
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	unreadc
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	peek, .Lfunc_end0-peek
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym peek
	.addrsig_sym readc
	.addrsig_sym unreadc