	.text
	.globl	jq_format_error                 // -- Begin function jq_format_error
	.p2align	2
	.type	jq_format_error,@function
jq_format_error:                        // @jq_format_error
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	w0, [sp, #8]
	ldr	w0, [sp, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.eq	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_INVALID
	ldr	x8, [x8, :lo12:JV_KIND_INVALID]
	subs	x8, x0, x8
	b.ne	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldr	w0, [sp, #8]
	bl	jv_copy
	bl	jv_invalid_has_msg
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #8]
	bl	jv_free
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	bl	jv_null
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_4:
	ldr	w0, [sp, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_17
.LBB0_6:
	ldr	w0, [sp, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_INVALID
	ldr	x8, [x8, :lo12:JV_KIND_INVALID]
	subs	x8, x0, x8
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w0, [sp, #8]
	bl	jv_invalid_get_msg
	str	w0, [sp, #8]
	b	.LBB0_8
.LBB0_8:
	ldr	w0, [sp, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	w0, [sp, #8]
	bl	jq_format_error
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_10:
	ldr	w0, [sp, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_INVALID
	ldr	x8, [x8, :lo12:JV_KIND_INVALID]
	subs	x8, x0, x8
	b.eq	.LBB0_16
	b	.LBB0_11
.LBB0_11:
	ldr	w0, [sp, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	w0, [sp, #8]
	bl	jv_string_value
	mov	w1, w0
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string_fmt
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_13:
	ldr	w0, [sp, #8]
	adrp	x8, JV_PRINT_INVALID
	ldr	w1, [x8, :lo12:JV_PRINT_INVALID]
	bl	jv_dump_string
	str	w0, [sp, #8]
	ldr	w0, [sp, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldr	w0, [sp, #8]
	bl	jv_string_value
	mov	w1, w0
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string_fmt
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_15:
	bl	jv_null
	bl	jq_format_error
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_16:
	ldr	w0, [sp, #8]
	bl	jv_invalid_get_msg
	bl	jq_format_error
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_17:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jq_format_error, .Lfunc_end0-jq_format_error
                                        // -- End function
	.type	JV_KIND_NULL,@object            // @JV_KIND_NULL
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.xword	0                               // 0x0
	.size	JV_KIND_NULL, 8
	.type	JV_KIND_INVALID,@object         // @JV_KIND_INVALID
	.globl	JV_KIND_INVALID
	.p2align	3
JV_KIND_INVALID:
	.xword	0                               // 0x0
	.size	JV_KIND_INVALID, 8
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jq: error: out of memory\n"
	.size	.L.str, 26
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"jq: error: %s"
	.size	.L.str.1, 14
	.type	JV_PRINT_INVALID,@object        // @JV_PRINT_INVALID
	.bss
	.globl	JV_PRINT_INVALID
	.p2align	2
JV_PRINT_INVALID:
	.word	0                               // 0x0
	.size	JV_PRINT_INVALID, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_format_error
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_invalid_has_msg
	.addrsig_sym jv_copy
	.addrsig_sym jv_free
	.addrsig_sym fprintf
	.addrsig_sym jv_null
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_string_value
	.addrsig_sym jv_dump_string
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JV_KIND_INVALID
	.addrsig_sym stderr
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_PRINT_INVALID