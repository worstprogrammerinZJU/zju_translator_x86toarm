	.text
	.p2align	2                               // -- Begin function type_error2
	.type	type_error2,@function
type_error2:                            // @type_error2
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	x2, [x29, #-16]
	ldur	w0, [x29, #-4]
	bl	jv_get_kind
	bl	jv_kind_name
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-4]
	bl	jv_copy
	sub	x1, x29, #31
	mov	w2, #15
	str	w2, [sp, #12]                   // 4-byte Folded Spill
	bl	jv_dump_string_trunc
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_get_kind
	bl	jv_kind_name
	str	w0, [sp, #24]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_copy
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	add	x1, sp, #34
	bl	jv_dump_string_trunc
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	ldr	w2, [sp, #20]                   // 4-byte Folded Reload
	ldr	w3, [sp, #24]                   // 4-byte Folded Reload
	mov	w4, w0
	ldur	x5, [x29, #-16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string_fmt
	bl	jv_invalid_with_msg
	str	w0, [sp, #28]
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldr	w0, [sp, #28]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	type_error2, .Lfunc_end0-type_error2
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s (%s) and %s (%s) %s"
	.size	.L.str, 23
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym type_error2
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_kind_name
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_dump_string_trunc
	.addrsig_sym jv_copy
	.addrsig_sym jv_free