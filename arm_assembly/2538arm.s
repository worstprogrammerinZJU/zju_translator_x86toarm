	.text
	.globl	jq_util_input_next_input        // -- Begin function jq_util_input_next_input
	.p2align	2
	.type	jq_util_input_next_input,@function
jq_util_input_next_input:               // @jq_util_input_next_input
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	wzr, [x29, #-20]
	stur	wzr, [x29, #-24]
	bl	jv_invalid
	str	x0, [sp, #32]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	cbnz	x8, .LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	bl	jq_util_input_read_more
	stur	w0, [x29, #-20]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_30
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_is_valid
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8]
	bl	jv_string_sized
	mov	w1, w0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	jv_string_concat
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	b	.LBB0_11
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #32]
	bl	jv_is_valid
	cbnz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	str	x0, [sp, #32]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	subs	x9, x9, #1
	ldrb	w8, [x8, x9]
	subs	w8, w8, #10
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	subs	x9, x9, #1
	add	x8, x8, x9
	strb	wzr, [x8]
	ldr	x8, [sp, #32]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	subs	x1, x8, #1
	bl	jv_string_sized
	mov	w1, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	jv_string_concat
	stur	x0, [x29, #-8]
	b	.LBB0_36
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8]
	bl	jv_string_sized
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	jv_string_concat
	str	x0, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	strb	wzr, [x8]
	ldur	x8, [x29, #-16]
	str	xzr, [x8]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_29
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #24]
	bl	jv_parser_remaining
	cbnz	w0, .LBB0_17
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	bl	jq_util_input_read_more
	stur	w0, [x29, #-20]
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_16
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	bl	jv_invalid
	str	x0, [sp, #32]
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #24]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	x2, [x8]
	ldur	w8, [x29, #-20]
	subs	w8, w8, #0
	cset	w8, eq
	and	w3, w8, #0x1
	bl	jv_parser_set_buf
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #24]
	bl	jv_parser_next
	str	x0, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_is_valid
	cbz	x0, .LBB0_24
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #24]
	bl	jv_parser_remaining
	stur	w0, [x29, #-24]
	ldr	x0, [sp, #32]
	bl	jv_is_valid
	cbz	x0, .LBB0_20
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	ldr	x1, [sp, #32]
	bl	jv_array_append
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	bl	jv_invalid
	str	x0, [sp, #32]
	b	.LBB0_23
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #32]
	bl	jv_copy
	bl	jv_invalid_has_msg
	cbz	x0, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	.LBB0_36
.LBB0_22:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_28
.LBB0_24:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #32]
	bl	jv_is_valid
	cbnz	x0, .LBB0_26
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #32]
	bl	jv_copy
	bl	jv_invalid_has_msg
	cbz	x0, .LBB0_27
	b	.LBB0_26
.LBB0_26:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	.LBB0_36
.LBB0_27:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	mov	w9, #1
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	cbz	w8, .LBB0_32
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-24]
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbnz	w8, #0, .LBB0_1
	b	.LBB0_33
.LBB0_33:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_is_valid
	cbz	x0, .LBB0_35
	b	.LBB0_34
.LBB0_34:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #32]
	bl	jv_invalid
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	b	.LBB0_35
.LBB0_35:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	.LBB0_36
.LBB0_36:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	jq_util_input_next_input, .Lfunc_end0-jq_util_input_next_input
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_invalid
	.addrsig_sym jq_util_input_read_more
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_string_concat
	.addrsig_sym jv_string_sized
	.addrsig_sym jv_string
	.addrsig_sym jv_parser_remaining
	.addrsig_sym jv_parser_set_buf
	.addrsig_sym jv_parser_next
	.addrsig_sym jv_array_append
	.addrsig_sym jv_invalid_has_msg
	.addrsig_sym jv_copy