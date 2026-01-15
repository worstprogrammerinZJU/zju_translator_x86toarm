	.text
	.p2align	2                               // -- Begin function f_current_filename
	.type	f_current_filename,@function
f_current_filename:                     // @f_current_filename
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	w0, [sp, #12]
	bl	jv_free
	ldr	x0, [sp, #16]
	bl	jq_util_input_get_current_filename
	str	w0, [sp, #8]
	ldr	w0, [sp, #8]
	bl	jv_is_valid
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	w0, [sp, #8]
	bl	jv_free
	bl	jv_null
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_current_filename, .Lfunc_end0-f_current_filename
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_current_filename
	.addrsig_sym jv_free
	.addrsig_sym jq_util_input_get_current_filename
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_null