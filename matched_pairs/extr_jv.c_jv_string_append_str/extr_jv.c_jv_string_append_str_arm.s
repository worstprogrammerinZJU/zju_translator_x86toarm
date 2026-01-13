	.text
	.globl	jv_string_append_str            // -- Begin function jv_string_append_str
	.p2align	2
	.type	jv_string_append_str,@function
jv_string_append_str:                   // @jv_string_append_str
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	strlen
	ldr	x1, [sp]                        // 8-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	jv_string_append_buf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_string_append_str, .Lfunc_end0-jv_string_append_str
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_string_append_buf
	.addrsig_sym strlen