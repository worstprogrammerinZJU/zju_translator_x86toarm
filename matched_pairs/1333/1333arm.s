	.text
	.p2align	2                               // -- Begin function jv_number_get_value_and_consume
	.type	jv_number_get_value_and_consume,@function
jv_number_get_value_and_consume:        // @jv_number_get_value_and_consume
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	jv_number_value
	str	d0, [sp]
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_number_get_value_and_consume, .Lfunc_end0-jv_number_get_value_and_consume
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_number_get_value_and_consume
	.addrsig_sym jv_number_value
	.addrsig_sym jv_free