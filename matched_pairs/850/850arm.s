	.text
	.p2align	2                               // -- Begin function default_err_cb
	.type	default_err_cb,@function
default_err_cb:                         // @default_err_cb
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w0, [x29, #-12]
	bl	jq_format_error
	stur	w0, [x29, #-12]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jv_string_value
	mov	x2, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldur	w0, [x29, #-12]
	bl	jv_free
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	default_err_cb, .Lfunc_end0-default_err_cb
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s\n"
	.size	.L.str, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym default_err_cb
	.addrsig_sym jq_format_error
	.addrsig_sym fprintf
	.addrsig_sym jv_string_value
	.addrsig_sym jv_free