	.text
	.p2align	2                               // -- Begin function set_error
	.type	set_error,@function
set_error:                              // @set_error
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	jv_free
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	set_error, .Lfunc_end0-set_error
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_error
	.addrsig_sym jv_free