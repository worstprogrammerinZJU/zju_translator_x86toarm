	.text
	.p2align	2                               // -- Begin function exit_process
	.type	exit_process,@function
exit_process:                           // @exit_process
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	UNUSED_PARAMETER
	mov	w0, wzr
	bl	exit
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	exit_process, .Lfunc_end0-exit_process
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym exit_process
	.addrsig_sym UNUSED_PARAMETER
	.addrsig_sym exit