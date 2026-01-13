	.text
	.p2align	2                               // -- Begin function f_current_line
	.type	f_current_line,@function
f_current_line:                         // @f_current_line
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w0, [sp, #4]
	bl	jv_free
	ldr	x0, [sp, #8]
	bl	jq_util_input_get_current_line
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	f_current_line, .Lfunc_end0-f_current_line
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_current_line
	.addrsig_sym jv_free
	.addrsig_sym jq_util_input_get_current_line