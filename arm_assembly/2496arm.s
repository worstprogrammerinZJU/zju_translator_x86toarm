	.text
	.p2align	2                               // -- Begin function success
	.type	success,@function
success:                                // @success
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w0, wzr
	bl	_exit
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	success, .Lfunc_end0-success
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym success
	.addrsig_sym _exit