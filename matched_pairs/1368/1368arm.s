	.text
	.globl	jv_parse_sized                  // -- Begin function jv_parse_sized
	.p2align	2
	.type	jv_parse_sized,@function
jv_parse_sized:                         // @jv_parse_sized
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	sub	x0, x29, #16
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	mov	w1, wzr
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	parser_init
	ldr	w3, [sp, #4]                    // 4-byte Folded Reload
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldur	x1, [x29, #-8]
	ldur	w2, [x29, #-12]
	bl	jv_parser_set_buf
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	jv_parser_next
	stur	w0, [x29, #-20]
	ldur	w0, [x29, #-20]
	bl	jv_is_valid
	cbz	x0, .LBB0_8
	b	.LBB0_1
.LBB0_1:
	sub	x0, x29, #16
	bl	jv_parser_next
	str	w0, [sp, #24]
	ldr	w0, [sp, #24]
	bl	jv_is_valid
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldr	w0, [sp, #24]
	bl	jv_free
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-20]
	b	.LBB0_7
.LBB0_3:
	ldr	w0, [sp, #24]
	bl	jv_copy
	bl	jv_invalid_has_msg
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldr	w8, [sp, #24]
	stur	w8, [x29, #-20]
	b	.LBB0_6
.LBB0_5:
	ldr	w0, [sp, #24]
	bl	jv_free
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_12
.LBB0_8:
	ldur	w0, [x29, #-20]
	bl	jv_copy
	bl	jv_invalid_has_msg
	cbz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_11
.LBB0_10:
	ldur	w0, [x29, #-20]
	bl	jv_free
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-20]
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	sub	x0, x29, #16
	bl	parser_free
	ldur	w0, [x29, #-20]
	bl	jv_is_valid
	cbnz	x0, .LBB0_15
	b	.LBB0_13
.LBB0_13:
	ldur	w0, [x29, #-20]
	bl	jv_copy
	bl	jv_invalid_has_msg
	cbz	x0, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldur	w0, [x29, #-20]
	bl	jv_invalid_get_msg
	str	w0, [sp, #20]
	ldr	w0, [sp, #20]
	bl	jv_string_value
	mov	w1, w0
	ldur	x2, [x29, #-8]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	jv_string_fmt
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-20]
	ldr	w0, [sp, #20]
	bl	jv_free
	b	.LBB0_15
.LBB0_15:
	ldur	w0, [x29, #-20]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jv_parse_sized, .Lfunc_end0-jv_parse_sized
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unexpected extra JSON values"
	.size	.L.str, 29
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Expected JSON value"
	.size	.L.str.1, 20
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s (while parsing '%s')"
	.size	.L.str.2, 24
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parser_init
	.addrsig_sym jv_parser_set_buf
	.addrsig_sym jv_parser_next
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym jv_invalid_has_msg
	.addrsig_sym jv_copy
	.addrsig_sym parser_free
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_string_value