	.text
	.globl	jq_util_input_set_parser        // -- Begin function jq_util_input_set_parser
	.p2align	2
	.type	jq_util_input_set_parser,@function
jq_util_input_set_parser:               // @jq_util_input_set_parser
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	bl	jv_is_valid
	subs	w8, w0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	ldur	x8, [x29, #-8]
	str	w0, [x8]
	b	.LBB0_7
.LBB0_3:
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	bl	jv_array
	ldur	x8, [x29, #-8]
	str	w0, [x8]
	b	.LBB0_6
.LBB0_5:
	bl	jv_invalid
	ldur	x8, [x29, #-8]
	str	w0, [x8]
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jq_util_input_set_parser, .Lfunc_end0-jq_util_input_set_parser
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_string
	.addrsig_sym jv_array
	.addrsig_sym jv_invalid