	.text
	.p2align	2                               // -- Begin function process
	.type	process,@function
process:                                // @process
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	adrp	x8, JQ_OK_NO_OUTPUT
	ldr	w8, [x8, :lo12:JQ_OK_NO_OUTPUT]
	stur	w8, [x29, #-24]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	bl	jq_start
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-8]
	bl	jq_next
	stur	w0, [x29, #-28]
	bl	jv_is_valid
	cbz	x0, .LBB0_20
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, options
	ldr	w8, [x8, :lo12:options]
	adrp	x9, RAW_OUTPUT
	ldr	w9, [x9, :lo12:RAW_OUTPUT]
	and	w8, w8, w9
	cbz	w8, .LBB0_8
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-28]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, options
	ldr	w8, [x8, :lo12:options]
	adrp	x9, ASCII_OUTPUT
	ldr	w9, [x9, :lo12:ASCII_OUTPUT]
	and	w8, w8, w9
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-28]
	bl	jv_copy
	adrp	x8, stdout
	ldr	w1, [x8, :lo12:stdout]
	adrp	x8, JV_PRINT_ASCII
	ldr	w2, [x8, :lo12:JV_PRINT_ASCII]
	bl	jv_dumpf
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-28]
	bl	jv_string_value
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-28]
	bl	jv_copy
	bl	jv_string_length_bytes
	mov	w2, w0
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	adrp	x8, stdout
	ldr	w3, [x8, :lo12:stdout]
	mov	w1, #1
	bl	fwrite
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, JQ_OK
	ldr	w8, [x8, :lo12:JQ_OK]
	stur	w8, [x29, #-24]
	ldur	w0, [x29, #-28]
	bl	jv_free
	b	.LBB0_15
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-28]
	bl	jv_get_kind
	adrp	x8, JV_KIND_FALSE
	ldr	x8, [x8, :lo12:JV_KIND_FALSE]
	subs	x8, x0, x8
	b.eq	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-28]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, JQ_OK_NULL_KIND
	ldr	w8, [x8, :lo12:JQ_OK_NULL_KIND]
	stur	w8, [x29, #-24]
	b	.LBB0_12
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, JQ_OK
	ldr	w8, [x8, :lo12:JQ_OK]
	stur	w8, [x29, #-24]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, options
	ldr	w8, [x8, :lo12:options]
	adrp	x9, SEQ
	ldr	w9, [x9, :lo12:SEQ]
	and	w8, w8, w9
	cbz	w8, .LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, stdout
	ldr	w2, [x8, :lo12:stdout]
	ldur	w8, [x29, #-20]
	adrp	x9, JV_PRINT_ISATTY
	ldr	w9, [x9, :lo12:JV_PRINT_ISATTY]
	and	w3, w8, w9
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	mov	w1, #1
	bl	priv_fwrite
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-28]
	ldur	w1, [x29, #-20]
	bl	jv_dump
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, options
	ldr	w8, [x8, :lo12:options]
	adrp	x9, RAW_NO_LF
	ldr	w9, [x9, :lo12:RAW_NO_LF]
	and	w8, w8, w9
	cbnz	w8, .LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, stdout
	ldr	w2, [x8, :lo12:stdout]
	ldur	w8, [x29, #-20]
	adrp	x9, JV_PRINT_ISATTY
	ldr	w9, [x9, :lo12:JV_PRINT_ISATTY]
	and	w3, w8, w9
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	mov	w1, #1
	bl	priv_fwrite
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, options
	ldr	w8, [x8, :lo12:options]
	adrp	x9, UNBUFFERED_OUTPUT
	ldr	w9, [x9, :lo12:UNBUFFERED_OUTPUT]
	and	w8, w8, w9
	cbz	w8, .LBB0_19
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, stdout
	ldr	w0, [x8, :lo12:stdout]
	bl	fflush
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_20:
	ldur	x0, [x29, #-8]
	bl	jq_halted
	cbz	x0, .LBB0_36
	b	.LBB0_21
.LBB0_21:
	adrp	x8, EXIT_STATUS_EXACT
	ldr	w10, [x8, :lo12:EXIT_STATUS_EXACT]
	adrp	x9, options
	ldr	w8, [x9, :lo12:options]
	orr	w8, w8, w10
	str	w8, [x9, :lo12:options]
	ldur	x0, [x29, #-8]
	bl	jq_get_exit_code
	stur	w0, [x29, #-32]
	ldur	w0, [x29, #-32]
	bl	jv_is_valid
	cbnz	x0, .LBB0_23
	b	.LBB0_22
.LBB0_22:
	adrp	x8, JQ_OK
	ldr	w8, [x8, :lo12:JQ_OK]
	stur	w8, [x29, #-24]
	b	.LBB0_27
.LBB0_23:
	ldur	w0, [x29, #-32]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	b.ne	.LBB0_25
	b	.LBB0_24
.LBB0_24:
	ldur	w0, [x29, #-32]
	bl	jv_number_value
	stur	w0, [x29, #-24]
	b	.LBB0_26
.LBB0_25:
	adrp	x8, JQ_ERROR_UNKNOWN
	ldr	w8, [x8, :lo12:JQ_ERROR_UNKNOWN]
	stur	w8, [x29, #-24]
	b	.LBB0_26
.LBB0_26:
	b	.LBB0_27
.LBB0_27:
	ldur	w0, [x29, #-32]
	bl	jv_free
	ldur	x0, [x29, #-8]
	bl	jq_get_error_message
	stur	w0, [x29, #-36]
	ldur	w0, [x29, #-36]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_29
	b	.LBB0_28
.LBB0_28:
	adrp	x8, stderr
	ldr	w8, [x8, :lo12:stderr]
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-36]
	bl	jv_string_value
	mov	x2, x0
	ldr	w0, [sp, #36]                   // 4-byte Folded Reload
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	fprintf
	b	.LBB0_35
.LBB0_29:
	ldur	w0, [x29, #-36]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.ne	.LBB0_31
	b	.LBB0_30
.LBB0_30:
	b	.LBB0_34
.LBB0_31:
	ldur	w0, [x29, #-36]
	bl	jv_is_valid
	cbz	x0, .LBB0_33
	b	.LBB0_32
.LBB0_32:
	ldur	w0, [x29, #-36]
	bl	jv_copy
	mov	w1, wzr
	bl	jv_dump_string
	stur	w0, [x29, #-36]
	adrp	x8, stderr
	ldr	w8, [x8, :lo12:stderr]
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-36]
	bl	jv_string_value
	mov	x2, x0
	ldr	w0, [sp, #32]                   // 4-byte Folded Reload
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	fprintf
	b	.LBB0_33
.LBB0_33:
	b	.LBB0_34
.LBB0_34:
	b	.LBB0_35
.LBB0_35:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	bl	fflush
	ldur	w0, [x29, #-36]
	bl	jv_free
	b	.LBB0_42
.LBB0_36:
	ldur	w0, [x29, #-28]
	bl	jv_copy
	bl	jv_invalid_has_msg
	cbz	x0, .LBB0_41
	b	.LBB0_37
.LBB0_37:
	ldur	w0, [x29, #-28]
	bl	jv_copy
	bl	jv_invalid_get_msg
	stur	w0, [x29, #-40]
	ldur	x0, [x29, #-8]
	bl	jq_util_input_get_position
	stur	w0, [x29, #-44]
	ldur	w0, [x29, #-40]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_39
	b	.LBB0_38
.LBB0_38:
	adrp	x8, stderr
	ldr	w8, [x8, :lo12:stderr]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-44]
	bl	jv_string_value
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-40]
	bl	jv_string_value
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	mov	x3, x0
	ldr	w0, [sp, #28]                   // 4-byte Folded Reload
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	fprintf
	b	.LBB0_40
.LBB0_39:
	ldur	w0, [x29, #-40]
	mov	w1, wzr
	bl	jv_dump_string
	stur	w0, [x29, #-40]
	adrp	x8, stderr
	ldr	w8, [x8, :lo12:stderr]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-44]
	bl	jv_string_value
	str	x0, [sp]                        // 8-byte Folded Spill
	ldur	w0, [x29, #-40]
	bl	jv_string_value
	ldr	x2, [sp]                        // 8-byte Folded Reload
	mov	x3, x0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	fprintf
	b	.LBB0_40
.LBB0_40:
	adrp	x8, JQ_ERROR_UNKNOWN
	ldr	w8, [x8, :lo12:JQ_ERROR_UNKNOWN]
	stur	w8, [x29, #-24]
	ldur	w0, [x29, #-44]
	bl	jv_free
	ldur	w0, [x29, #-40]
	bl	jv_free
	b	.LBB0_41
.LBB0_41:
	b	.LBB0_42
.LBB0_42:
	ldur	w0, [x29, #-28]
	bl	jv_free
	ldur	w0, [x29, #-24]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	process, .Lfunc_end0-process
                                        // -- End function
	.type	JQ_OK_NO_OUTPUT,@object         // @JQ_OK_NO_OUTPUT
	.bss
	.globl	JQ_OK_NO_OUTPUT
	.p2align	2
JQ_OK_NO_OUTPUT:
	.word	0                               // 0x0
	.size	JQ_OK_NO_OUTPUT, 4
	.type	options,@object                 // @options
	.globl	options
	.p2align	2
options:
	.word	0                               // 0x0
	.size	options, 4
	.type	RAW_OUTPUT,@object              // @RAW_OUTPUT
	.globl	RAW_OUTPUT
	.p2align	2
RAW_OUTPUT:
	.word	0                               // 0x0
	.size	RAW_OUTPUT, 4
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.type	ASCII_OUTPUT,@object            // @ASCII_OUTPUT
	.globl	ASCII_OUTPUT
	.p2align	2
ASCII_OUTPUT:
	.word	0                               // 0x0
	.size	ASCII_OUTPUT, 4
	.type	stdout,@object                  // @stdout
	.globl	stdout
	.p2align	2
stdout:
	.word	0                               // 0x0
	.size	stdout, 4
	.type	JV_PRINT_ASCII,@object          // @JV_PRINT_ASCII
	.globl	JV_PRINT_ASCII
	.p2align	2
JV_PRINT_ASCII:
	.word	0                               // 0x0
	.size	JV_PRINT_ASCII, 4
	.type	JQ_OK,@object                   // @JQ_OK
	.globl	JQ_OK
	.p2align	2
JQ_OK:
	.word	0                               // 0x0
	.size	JQ_OK, 4
	.type	JV_KIND_FALSE,@object           // @JV_KIND_FALSE
	.globl	JV_KIND_FALSE
	.p2align	3
JV_KIND_FALSE:
	.xword	0                               // 0x0
	.size	JV_KIND_FALSE, 8
	.type	JV_KIND_NULL,@object            // @JV_KIND_NULL
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.xword	0                               // 0x0
	.size	JV_KIND_NULL, 8
	.type	JQ_OK_NULL_KIND,@object         // @JQ_OK_NULL_KIND
	.globl	JQ_OK_NULL_KIND
	.p2align	2
JQ_OK_NULL_KIND:
	.word	0                               // 0x0
	.size	JQ_OK_NULL_KIND, 4
	.type	SEQ,@object                     // @SEQ
	.globl	SEQ
	.p2align	2
SEQ:
	.word	0                               // 0x0
	.size	SEQ, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\036"
	.size	.L.str, 2
	.type	JV_PRINT_ISATTY,@object         // @JV_PRINT_ISATTY
	.bss
	.globl	JV_PRINT_ISATTY
	.p2align	2
JV_PRINT_ISATTY:
	.word	0                               // 0x0
	.size	JV_PRINT_ISATTY, 4
	.type	RAW_NO_LF,@object               // @RAW_NO_LF
	.globl	RAW_NO_LF
	.p2align	2
RAW_NO_LF:
	.word	0                               // 0x0
	.size	RAW_NO_LF, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2
	.type	UNBUFFERED_OUTPUT,@object       // @UNBUFFERED_OUTPUT
	.bss
	.globl	UNBUFFERED_OUTPUT
	.p2align	2
UNBUFFERED_OUTPUT:
	.word	0                               // 0x0
	.size	UNBUFFERED_OUTPUT, 4
	.type	EXIT_STATUS_EXACT,@object       // @EXIT_STATUS_EXACT
	.globl	EXIT_STATUS_EXACT
	.p2align	2
EXIT_STATUS_EXACT:
	.word	0                               // 0x0
	.size	EXIT_STATUS_EXACT, 4
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.xword	0                               // 0x0
	.size	JV_KIND_NUMBER, 8
	.type	JQ_ERROR_UNKNOWN,@object        // @JQ_ERROR_UNKNOWN
	.globl	JQ_ERROR_UNKNOWN
	.p2align	2
JQ_ERROR_UNKNOWN:
	.word	0                               // 0x0
	.size	JQ_ERROR_UNKNOWN, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"jq: error: %s"
	.size	.L.str.2, 14
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"jq: error: %s\n"
	.size	.L.str.3, 15
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"jq: error (at %s): %s\n"
	.size	.L.str.4, 23
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"jq: error (at %s) (not a string): %s\n"
	.size	.L.str.5, 38
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym process
	.addrsig_sym jq_start
	.addrsig_sym jv_is_valid
	.addrsig_sym jq_next
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_dumpf
	.addrsig_sym jv_copy
	.addrsig_sym fwrite
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_free
	.addrsig_sym priv_fwrite
	.addrsig_sym jv_dump
	.addrsig_sym fflush
	.addrsig_sym jq_halted
	.addrsig_sym jq_get_exit_code
	.addrsig_sym jv_number_value
	.addrsig_sym jq_get_error_message
	.addrsig_sym fprintf
	.addrsig_sym jv_dump_string
	.addrsig_sym jv_invalid_has_msg
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym jq_util_input_get_position
	.addrsig_sym JQ_OK_NO_OUTPUT
	.addrsig_sym options
	.addrsig_sym RAW_OUTPUT
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym ASCII_OUTPUT
	.addrsig_sym stdout
	.addrsig_sym JV_PRINT_ASCII
	.addrsig_sym JQ_OK
	.addrsig_sym JV_KIND_FALSE
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JQ_OK_NULL_KIND
	.addrsig_sym SEQ
	.addrsig_sym JV_PRINT_ISATTY
	.addrsig_sym RAW_NO_LF
	.addrsig_sym UNBUFFERED_OUTPUT
	.addrsig_sym EXIT_STATUS_EXACT
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JQ_ERROR_UNKNOWN
	.addrsig_sym stderr