	.text
	.p2align	2                               // -- Begin function f_type
	.type	f_type,@function
f_type:                                 // @f_type
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w0, [sp, #4]
	bl	jv_get_kind
	bl	jv_kind_name
	bl	jv_string
	str	w0, [sp]
	ldr	w0, [sp, #4]
	bl	jv_free
	ldr	w0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	f_type, .Lfunc_end0-f_type
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_type
	.addrsig_sym jv_string
	.addrsig_sym jv_kind_name
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free