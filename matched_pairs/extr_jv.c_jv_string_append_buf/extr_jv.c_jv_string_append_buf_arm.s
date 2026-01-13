	.text
	.globl	jv_string_append_buf            // -- Begin function jv_string_append_buf
	.p2align	2
	.type	jv_string_append_buf,@function
jv_string_append_buf:                   // @jv_string_append_buf
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	add	x1, x8, x9
	bl	jvp_utf8_is_valid
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-4]
	ldr	x1, [sp, #16]
	ldr	w2, [sp, #12]
	bl	jvp_string_append
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #12]
	bl	jvp_string_copy_replace_bad
	str	w0, [sp, #8]
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #8]
	bl	jv_string_concat
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_string_append_buf, .Lfunc_end0-jv_string_append_buf
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_utf8_is_valid
	.addrsig_sym jvp_string_append
	.addrsig_sym jvp_string_copy_replace_bad
	.addrsig_sym jv_string_concat