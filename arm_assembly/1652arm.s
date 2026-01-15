	.text
	.p2align	2                               // -- Begin function noarg
	.type	noarg,@function
noarg:                                  // @noarg
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w1, #55
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	noarg, .Lfunc_end0-noarg
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym noarg
	.addrsig_sym expect