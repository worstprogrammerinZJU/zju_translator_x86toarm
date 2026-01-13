	.text
	.globl	jv_parser_next                  // -- Begin function jv_parser_next
	.p2align	2
	.type	jv_parser_next,@function
jv_parser_next:                         // @jv_parser_next
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	jv_invalid
	stur	w0, [x29, #-4]
	b	.LBB0_54
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	bl	jv_invalid
	stur	w0, [x29, #-4]
	b	.LBB0_54
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #16]
	subs	w8, w8, #255
	b.ne	.LBB0_8
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	adrp	x9, JV_PARSE_SEQ
	ldr	w9, [x9, :lo12:JV_PARSE_SEQ]
	and	w8, w8, w9
	cbnz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	b	.LBB0_54
.LBB0_7:
	adrp	x8, JV_PARSER_WAITING_FOR_RS
	ldr	x8, [x8, :lo12:JV_PARSER_WAITING_FOR_RS]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #24]
	ldur	x0, [x29, #-16]
	bl	parser_reset
	b	.LBB0_8
.LBB0_8:
	bl	jv_invalid
	stur	w0, [x29, #-20]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	adrp	x9, JV_PARSE_STREAMING
	ldr	w9, [x9, :lo12:JV_PARSE_STREAMING]
	and	w8, w8, w9
	cbz	w8, .LBB0_11
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-16]
	sub	x1, x29, #20
	bl	stream_check_done
	cbz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-4]
	b	.LBB0_54
.LBB0_11:
	str	xzr, [sp, #16]
	b	.LBB0_12
.LBB0_12:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	mov	w9, #0
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	cbnz	x8, .LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #40]
	subs	x8, x8, x9
	cset	w8, lt
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_23
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_12 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x11, [x29, #-16]
	ldr	x9, [x11, #32]
	add	x10, x9, #1
	str	x10, [x11, #32]
	add	x8, x8, x9
	ldrb	w8, [x8]
	sturb	w8, [x29, #-21]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	adrp	x9, JV_PARSER_WAITING_FOR_RS
	ldr	x9, [x9, :lo12:JV_PARSER_WAITING_FOR_RS]
	subs	x8, x8, x9
	b.ne	.LBB0_22
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_12 Depth=1
	ldurb	w8, [x29, #-21]
	subs	w8, w8, #10
	b.ne	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_12 Depth=1
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #72]
	add	w8, w8, #1
	str	w8, [x9, #72]
	ldur	x8, [x29, #-16]
	str	xzr, [x8, #64]
	b	.LBB0_19
.LBB0_18:                               //   in Loop: Header=BB0_12 Depth=1
	ldur	x9, [x29, #-16]
	ldr	x8, [x9, #64]
	add	x8, x8, #1
	str	x8, [x9, #64]
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_12 Depth=1
	ldurb	w8, [x29, #-21]
	subs	w8, w8, #30
	b.ne	.LBB0_21
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_12 Depth=1
	adrp	x8, JV_PARSER_NORMAL
	ldr	x8, [x8, :lo12:JV_PARSER_NORMAL]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #24]
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_12 Depth=1
	b	.LBB0_12
.LBB0_22:                               //   in Loop: Header=BB0_12 Depth=1
	ldur	x0, [x29, #-16]
	ldurb	w1, [x29, #-21]
	sub	x2, x29, #20
	bl	scan
	str	x0, [sp, #16]
	b	.LBB0_12
.LBB0_23:
	ldr	x8, [sp, #16]
	adrp	x9, OK
	ldr	x9, [x9, :lo12:OK]
	subs	x8, x8, x9
	b.ne	.LBB0_25
	b	.LBB0_24
.LBB0_24:
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-4]
	b	.LBB0_54
.LBB0_25:
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_32
	b	.LBB0_26
.LBB0_26:
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldurb	w8, [x29, #-21]
	subs	w8, w8, #30
	b.eq	.LBB0_29
	b	.LBB0_27
.LBB0_27:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	adrp	x9, JV_PARSE_SEQ
	ldr	w9, [x9, :lo12:JV_PARSE_SEQ]
	and	w8, w8, w9
	cbz	w8, .LBB0_29
	b	.LBB0_28
.LBB0_28:
	adrp	x8, JV_PARSER_WAITING_FOR_RS
	ldr	x8, [x8, :lo12:JV_PARSER_WAITING_FOR_RS]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #24]
	ldur	x0, [x29, #-16]
	ldr	x2, [sp, #16]
	ldur	x8, [x29, #-16]
	ldrsw	x3, [x8, #72]
	ldur	x8, [x29, #-16]
	ldr	x4, [x8, #64]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	make_error
	stur	w0, [x29, #-20]
	ldur	x0, [x29, #-16]
	bl	parser_reset
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-4]
	b	.LBB0_54
.LBB0_29:
	ldur	x0, [x29, #-16]
	ldr	x2, [sp, #16]
	ldur	x8, [x29, #-16]
	ldrsw	x3, [x8, #72]
	ldur	x8, [x29, #-16]
	ldr	x4, [x8, #64]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	make_error
	stur	w0, [x29, #-20]
	ldur	x0, [x29, #-16]
	bl	parser_reset
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	adrp	x9, JV_PARSE_SEQ
	ldr	w9, [x9, :lo12:JV_PARSE_SEQ]
	and	w8, w8, w9
	cbnz	w8, .LBB0_31
	b	.LBB0_30
.LBB0_30:
	ldur	x8, [x29, #-16]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #8]
	ldur	x8, [x29, #-16]
	str	xzr, [x8, #32]
	b	.LBB0_31
.LBB0_31:
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-4]
	b	.LBB0_54
.LBB0_32:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #88]
	cbz	x8, .LBB0_34
	b	.LBB0_33
.LBB0_33:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #40]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	bl	jv_invalid
	stur	w0, [x29, #-4]
	b	.LBB0_54
.LBB0_34:
	ldur	x9, [x29, #-16]
	mov	w8, #1
	str	w8, [x9]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #40]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	adrp	x9, JV_PARSER_WAITING_FOR_RS
	ldr	x9, [x9, :lo12:JV_PARSER_WAITING_FOR_RS]
	subs	x8, x8, x9
	b.ne	.LBB0_36
	b	.LBB0_35
.LBB0_35:
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldrsw	x2, [x8, #72]
	ldur	x8, [x29, #-16]
	ldr	x3, [x8, #64]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	make_error
	stur	w0, [x29, #-4]
	b	.LBB0_54
.LBB0_36:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	adrp	x9, JV_PARSER_NORMAL
	ldr	x9, [x9, :lo12:JV_PARSER_NORMAL]
	subs	x8, x8, x9
	b.eq	.LBB0_38
	b	.LBB0_37
.LBB0_37:
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldrsw	x2, [x8, #72]
	ldur	x8, [x29, #-16]
	ldr	x3, [x8, #64]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	make_error
	stur	w0, [x29, #-20]
	ldur	x0, [x29, #-16]
	bl	parser_reset
	adrp	x8, JV_PARSER_WAITING_FOR_RS
	ldr	x8, [x8, :lo12:JV_PARSER_WAITING_FOR_RS]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #24]
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-4]
	b	.LBB0_54
.LBB0_38:
	ldur	x0, [x29, #-16]
	bl	check_literal
	str	x0, [sp, #16]
	cbz	x0, .LBB0_40
	b	.LBB0_39
.LBB0_39:
	ldur	x0, [x29, #-16]
	ldr	x2, [sp, #16]
	ldur	x8, [x29, #-16]
	ldrsw	x3, [x8, #72]
	ldur	x8, [x29, #-16]
	ldr	x4, [x8, #64]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	make_error
	stur	w0, [x29, #-20]
	ldur	x0, [x29, #-16]
	bl	parser_reset
	adrp	x8, JV_PARSER_WAITING_FOR_RS
	ldr	x8, [x8, :lo12:JV_PARSER_WAITING_FOR_RS]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #24]
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-4]
	b	.LBB0_54
.LBB0_40:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	adrp	x9, JV_PARSE_STREAMING
	ldr	w9, [x9, :lo12:JV_PARSE_STREAMING]
	and	w8, w8, w9
	cbz	w8, .LBB0_42
	b	.LBB0_41
.LBB0_41:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #48]
	cbnz	x8, .LBB0_44
	b	.LBB0_42
.LBB0_42:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	adrp	x9, JV_PARSE_STREAMING
	ldr	w9, [x9, :lo12:JV_PARSE_STREAMING]
	and	w8, w8, w9
	cbnz	w8, .LBB0_45
	b	.LBB0_43
.LBB0_43:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	cbz	x8, .LBB0_45
	b	.LBB0_44
.LBB0_44:
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldrsw	x2, [x8, #72]
	ldur	x8, [x29, #-16]
	ldr	x3, [x8, #64]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	make_error
	stur	w0, [x29, #-20]
	ldur	x0, [x29, #-16]
	bl	parser_reset
	adrp	x8, JV_PARSER_WAITING_FOR_RS
	ldr	x8, [x8, :lo12:JV_PARSER_WAITING_FOR_RS]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #24]
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-4]
	b	.LBB0_54
.LBB0_45:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	adrp	x9, JV_PARSE_STREAMING
	ldr	w9, [x9, :lo12:JV_PARSE_STREAMING]
	and	w8, w8, w9
	cbz	w8, .LBB0_48
	b	.LBB0_46
.LBB0_46:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #80]
	bl	jv_is_valid
	cbz	x0, .LBB0_48
	b	.LBB0_47
.LBB0_47:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #84]
	bl	jv_copy
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #80]
	bl	JV_ARRAY
	stur	w0, [x29, #-20]
	b	.LBB0_49
.LBB0_48:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #80]
	stur	w8, [x29, #-20]
	b	.LBB0_49
.LBB0_49:
	bl	jv_invalid
	ldur	x8, [x29, #-16]
	str	w0, [x8, #80]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	adrp	x9, JV_PARSE_SEQ
	ldr	w9, [x9, :lo12:JV_PARSE_SEQ]
	and	w8, w8, w9
	cbz	w8, .LBB0_53
	b	.LBB0_50
.LBB0_50:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #76]
	cbnz	w8, .LBB0_53
	b	.LBB0_51
.LBB0_51:
	ldur	w0, [x29, #-20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	b.ne	.LBB0_53
	b	.LBB0_52
.LBB0_52:
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldrsw	x2, [x8, #72]
	ldur	x8, [x29, #-16]
	ldr	x3, [x8, #64]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	make_error
	stur	w0, [x29, #-4]
	b	.LBB0_54
.LBB0_53:
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-4]
	b	.LBB0_54
.LBB0_54:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jv_parser_next, .Lfunc_end0-jv_parser_next
                                        // -- End function
	.type	JV_PARSE_SEQ,@object            // @JV_PARSE_SEQ
	.bss
	.globl	JV_PARSE_SEQ
	.p2align	2
JV_PARSE_SEQ:
	.word	0                               // 0x0
	.size	JV_PARSE_SEQ, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Malformed BOM"
	.size	.L.str, 14
	.type	JV_PARSER_WAITING_FOR_RS,@object // @JV_PARSER_WAITING_FOR_RS
	.bss
	.globl	JV_PARSER_WAITING_FOR_RS
	.p2align	3
JV_PARSER_WAITING_FOR_RS:
	.xword	0                               // 0x0
	.size	JV_PARSER_WAITING_FOR_RS, 8
	.type	JV_PARSE_STREAMING,@object      // @JV_PARSE_STREAMING
	.globl	JV_PARSE_STREAMING
	.p2align	2
JV_PARSE_STREAMING:
	.word	0                               // 0x0
	.size	JV_PARSE_STREAMING, 4
	.type	JV_PARSER_NORMAL,@object        // @JV_PARSER_NORMAL
	.globl	JV_PARSER_NORMAL
	.p2align	3
JV_PARSER_NORMAL:
	.xword	0                               // 0x0
	.size	JV_PARSER_NORMAL, 8
	.type	OK,@object                      // @OK
	.globl	OK
	.p2align	3
OK:
	.xword	0                               // 0x0
	.size	OK, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s at line %d, column %d (need RS to resync)"
	.size	.L.str.1, 45
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s at line %d, column %d"
	.size	.L.str.2, 25
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"Unfinished abandoned text at EOF at line %d, column %d"
	.size	.L.str.3, 55
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"Unfinished string at EOF at line %d, column %d"
	.size	.L.str.4, 47
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"%s at EOF at line %d, column %d"
	.size	.L.str.5, 32
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"Unfinished JSON term at EOF at line %d, column %d"
	.size	.L.str.6, 50
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.xword	0                               // 0x0
	.size	JV_KIND_NUMBER, 8
	.type	.L.str.7,@object                // @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Potentially truncated top-level numeric value at EOF at line %d, column %d"
	.size	.L.str.7, 75
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_invalid
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym parser_reset
	.addrsig_sym stream_check_done
	.addrsig_sym scan
	.addrsig_sym jv_free
	.addrsig_sym make_error
	.addrsig_sym assert
	.addrsig_sym check_literal
	.addrsig_sym jv_is_valid
	.addrsig_sym JV_ARRAY
	.addrsig_sym jv_copy
	.addrsig_sym jv_get_kind
	.addrsig_sym JV_PARSE_SEQ
	.addrsig_sym JV_PARSER_WAITING_FOR_RS
	.addrsig_sym JV_PARSE_STREAMING
	.addrsig_sym JV_PARSER_NORMAL
	.addrsig_sym OK
	.addrsig_sym JV_KIND_NUMBER