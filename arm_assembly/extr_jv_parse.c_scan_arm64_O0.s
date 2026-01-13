	.text
	.p2align	2                               // -- Begin function scan
	.type	scan,@function
scan:                                   // @scan
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	sturb	w1, [x29, #-17]
	str	x2, [sp, #32]
	ldur	x9, [x29, #-16]
	ldr	x8, [x9, #16]
	add	x8, x8, #1
	str	x8, [x9, #16]
	ldurb	w8, [x29, #-17]
	subs	w8, w8, #10
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #24]
	add	w8, w8, #1
	str	w8, [x9, #24]
	ldur	x8, [x29, #-16]
	str	xzr, [x8, #16]
	b	.LBB0_2
.LBB0_2:
	ldurb	w8, [x29, #-17]
	subs	w8, w8, #30
	b.ne	.LBB0_12
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	bl	check_truncation
	cbz	x0, .LBB0_8
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-16]
	bl	check_literal
	cbnz	x0, .LBB0_7
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-16]
	bl	is_top_num
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-8]
	b	.LBB0_41
.LBB0_7:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	stur	x8, [x29, #-8]
	b	.LBB0_41
.LBB0_8:
	ldur	x0, [x29, #-16]
	bl	check_literal
	bl	TRY
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_PARSER_NORMAL
	ldr	x9, [x9, :lo12:JV_PARSER_NORMAL]
	subs	x8, x8, x9
	b.ne	.LBB0_11
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #32]
	bl	check_done
	cbz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	adrp	x8, OK
	ldr	x8, [x8, :lo12:OK]
	stur	x8, [x29, #-8]
	b	.LBB0_41
.LBB0_11:
	ldr	x8, [sp, #32]
	ldr	w0, [x8]
	bl	jv_is_valid
	subs	w8, w0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-16]
	bl	parser_reset
	ldr	x8, [sp, #32]
	ldr	w0, [x8]
	bl	jv_free
	bl	jv_invalid
	ldr	x8, [sp, #32]
	str	w0, [x8]
	adrp	x8, OK
	ldr	x8, [x8, :lo12:OK]
	stur	x8, [x29, #-8]
	b	.LBB0_41
.LBB0_12:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	ldur	x8, [x29, #-16]
	str	wzr, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_PARSER_NORMAL
	ldr	x9, [x9, :lo12:JV_PARSER_NORMAL]
	subs	x8, x8, x9
	b.ne	.LBB0_29
	b	.LBB0_13
.LBB0_13:
	ldurb	w0, [x29, #-17]
	bl	classify
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	subs	w8, w8, #128
	b.ne	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldur	x9, [x29, #-16]
	mov	w8, #1
	str	w8, [x9, #8]
	b	.LBB0_15
.LBB0_15:
	ldr	w8, [sp, #20]
	subs	w8, w8, #131
	b.eq	.LBB0_19
	b	.LBB0_16
.LBB0_16:
	ldur	x0, [x29, #-16]
	bl	check_literal
	bl	TRY
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #32]
	bl	check_done
	cbz	x0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	adrp	x8, OK
	ldr	x8, [x8, :lo12:OK]
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_18:
	b	.LBB0_19
.LBB0_19:
	ldr	w8, [sp, #20]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	subs	x8, x8, #4
	b.hi	.LBB0_26
// %bb.20:
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_21:
	ldur	x0, [x29, #-16]
	ldurb	w1, [x29, #-17]
	bl	tokenadd
	b	.LBB0_26
.LBB0_22:
	b	.LBB0_26
.LBB0_23:
	adrp	x8, JV_PARSER_STRING
	ldr	x8, [x8, :lo12:JV_PARSER_STRING]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	.LBB0_26
.LBB0_24:
	ldur	x0, [x29, #-16]
	ldurb	w1, [x29, #-17]
	bl	token
	bl	TRY
	b	.LBB0_26
.LBB0_25:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	stur	x8, [x29, #-8]
	b	.LBB0_41
.LBB0_26:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #32]
	bl	check_done
	cbz	x0, .LBB0_28
	b	.LBB0_27
.LBB0_27:
	adrp	x8, OK
	ldr	x8, [x8, :lo12:OK]
	str	x8, [sp, #24]
	b	.LBB0_28
.LBB0_28:
	b	.LBB0_40
.LBB0_29:
	ldurb	w8, [x29, #-17]
	subs	w8, w8, #34
	b.ne	.LBB0_34
	b	.LBB0_30
.LBB0_30:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_PARSER_STRING
	ldr	x9, [x9, :lo12:JV_PARSER_STRING]
	subs	x8, x8, x9
	b.ne	.LBB0_34
	b	.LBB0_31
.LBB0_31:
	ldur	x0, [x29, #-16]
	bl	found_string
	bl	TRY
	adrp	x8, JV_PARSER_NORMAL
	ldr	x8, [x8, :lo12:JV_PARSER_NORMAL]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #32]
	bl	check_done
	cbz	x0, .LBB0_33
	b	.LBB0_32
.LBB0_32:
	adrp	x8, OK
	ldr	x8, [x8, :lo12:OK]
	str	x8, [sp, #24]
	b	.LBB0_33
.LBB0_33:
	b	.LBB0_39
.LBB0_34:
	ldur	x0, [x29, #-16]
	ldurb	w1, [x29, #-17]
	bl	tokenadd
	ldurb	w8, [x29, #-17]
	subs	w8, w8, #92
	b.ne	.LBB0_37
	b	.LBB0_35
.LBB0_35:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_PARSER_STRING
	ldr	x9, [x9, :lo12:JV_PARSER_STRING]
	subs	x8, x8, x9
	b.ne	.LBB0_37
	b	.LBB0_36
.LBB0_36:
	adrp	x8, JV_PARSER_STRING_ESCAPE
	ldr	x8, [x8, :lo12:JV_PARSER_STRING_ESCAPE]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	.LBB0_38
.LBB0_37:
	adrp	x8, JV_PARSER_STRING
	ldr	x8, [x8, :lo12:JV_PARSER_STRING]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	.LBB0_38
.LBB0_38:
	b	.LBB0_39
.LBB0_39:
	b	.LBB0_40
.LBB0_40:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	.LBB0_41
.LBB0_41:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	scan, .Lfunc_end0-scan
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_22-.Ltmp0
	.word	.LBB0_24-.Ltmp0
	.word	.LBB0_23-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_25-.Ltmp0
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Potentially truncated top-level numeric value"
	.size	.L.str, 46
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Truncated value"
	.size	.L.str.1, 16
	.type	JV_PARSER_NORMAL,@object        // @JV_PARSER_NORMAL
	.bss
	.globl	JV_PARSER_NORMAL
	.p2align	3
JV_PARSER_NORMAL:
	.xword	0                               // 0x0
	.size	JV_PARSER_NORMAL, 8
	.type	OK,@object                      // @OK
	.globl	OK
	.p2align	3
OK:
	.xword	0
	.size	OK, 8
	.type	JV_PARSER_STRING,@object        // @JV_PARSER_STRING
	.globl	JV_PARSER_STRING
	.p2align	3
JV_PARSER_STRING:
	.xword	0                               // 0x0
	.size	JV_PARSER_STRING, 8
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Invalid character"
	.size	.L.str.2, 18
	.type	JV_PARSER_STRING_ESCAPE,@object // @JV_PARSER_STRING_ESCAPE
	.bss
	.globl	JV_PARSER_STRING_ESCAPE
	.p2align	3
JV_PARSER_STRING_ESCAPE:
	.xword	0                               // 0x0
	.size	JV_PARSER_STRING_ESCAPE, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym scan
	.addrsig_sym check_truncation
	.addrsig_sym check_literal
	.addrsig_sym is_top_num
	.addrsig_sym TRY
	.addrsig_sym check_done
	.addrsig_sym assert
	.addrsig_sym jv_is_valid
	.addrsig_sym parser_reset
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid
	.addrsig_sym classify
	.addrsig_sym tokenadd
	.addrsig_sym token
	.addrsig_sym found_string
	.addrsig_sym JV_PARSER_NORMAL
	.addrsig_sym OK
	.addrsig_sym JV_PARSER_STRING
	.addrsig_sym JV_PARSER_STRING_ESCAPE