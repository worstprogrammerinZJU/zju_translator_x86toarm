	.text
	.p2align	2                               // -- Begin function type_error
	.type	type_error,@function
type_error:                             // @type_error
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	ldur	w0, [x29, #-4]
	bl	jv_get_kind
	bl	jv_kind_name
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-4]
	bl	jv_copy
	add	x1, sp, #17
	mov	w2, #15
	bl	jv_dump_string_trunc
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w2, w0
	ldur	x3, [x29, #-16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string_fmt
	bl	jv_invalid_with_msg
	str	w0, [sp, #12]
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	type_error, .Lfunc_end0-type_error
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s (%s) %s"
	.size	.L.str, 11
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym type_error
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_kind_name
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_dump_string_trunc
	.addrsig_sym jv_copy
	.addrsig_sym jv_free