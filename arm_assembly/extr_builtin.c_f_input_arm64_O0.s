	.text
	.p2align	2                               // -- Begin function f_input
	.type	f_input,@function
f_input:                                // @f_input
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldur	x0, [x29, #-16]
	add	x1, sp, #16
	add	x2, sp, #8
	bl	jq_get_input_cb
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	b	.LBB0_6
.LBB0_2:
	ldr	x8, [sp, #16]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #8]
	blr	x8
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	bl	jv_is_valid
	cbnz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #4]
	bl	jv_copy
	bl	jv_invalid_has_msg
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_6
.LBB0_5:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	f_input, .Lfunc_end0-f_input
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"break"
	.size	.L.str, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_input
	.addrsig_sym jv_free
	.addrsig_sym jq_get_input_cb
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_invalid_has_msg
	.addrsig_sym jv_copy