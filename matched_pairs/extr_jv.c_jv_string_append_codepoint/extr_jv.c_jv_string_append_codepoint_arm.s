	.text
	.globl	jv_string_append_codepoint      // -- Begin function jv_string_append_codepoint
	.p2align	2
	.type	jv_string_append_codepoint,@function
jv_string_append_codepoint:             // @jv_string_append_codepoint
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	ldur	w0, [x29, #-8]
	sub	x1, x29, #13
	str	x1, [sp]                        // 8-byte Folded Spill
	bl	jvp_utf8_encode
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldur	w0, [x29, #-4]
	ldr	w2, [sp, #12]
	bl	jvp_string_append
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_string_append_codepoint, .Lfunc_end0-jv_string_append_codepoint
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_utf8_encode
	.addrsig_sym jvp_string_append