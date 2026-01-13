	.text
	.globl	jv_string_concat                // -- Begin function jv_string_concat
	.p2align	2
	.type	jv_string_concat,@function
jv_string_concat:                       // @jv_string_concat
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	w0, [sp, #8]
	bl	jv_string_value
	str	w0, [sp]                        // 4-byte Folded Spill
	ldr	w0, [sp, #8]
	bl	jvp_string_ptr
	bl	jvp_string_length
	ldr	w1, [sp]                        // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	jvp_string_append
	stur	w0, [x29, #-4]
	ldr	w0, [sp, #8]
	bl	jv_free
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_string_concat, .Lfunc_end0-jv_string_concat
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_append
	.addrsig_sym jv_string_value
	.addrsig_sym jvp_string_length
	.addrsig_sym jvp_string_ptr
	.addrsig_sym jv_free