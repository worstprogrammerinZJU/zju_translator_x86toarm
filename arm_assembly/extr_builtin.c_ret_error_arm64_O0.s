	.text
	.p2align	2                               // -- Begin function ret_error
	.type	ret_error,@function
ret_error:                              // @ret_error
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldr	w0, [sp, #8]
	bl	jv_invalid_with_msg
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ret_error, .Lfunc_end0-ret_error
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ret_error
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid_with_msg