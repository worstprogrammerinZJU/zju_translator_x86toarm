	.text
	.globl	jq_util_input_get_position      // -- Begin function jq_util_input_get_position
	.p2align	2
	.type	jq_util_input_get_position,@function
jq_util_input_get_position:             // @jq_util_input_get_position
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	sub	x1, x29, #24
	stur	xzr, [x29, #-24]
	add	x2, sp, #32
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #32]
	ldur	x0, [x29, #-16]
	bl	jq_get_input_cb
	ldur	x8, [x29, #-24]
	adrp	x9, jq_util_input_next_input_cb
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	ldr	x9, [x9, :lo12:jq_util_input_next_input_cb]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	ldr	x9, [x9, :lo12:jq_util_input_next_input_cb]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldr	x8, [sp, #32]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w0, [x8, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string
	stur	w0, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp, #24]
	ldr	w0, [x8, #8]
	bl	jv_string_value
	mov	w1, w0
	ldr	x8, [sp, #24]
	ldr	x2, [x8]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	jv_string_fmt
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	jq_util_input_get_position, .Lfunc_end0-jq_util_input_get_position
                                        // -- End function
	.type	jq_util_input_next_input_cb,@object // @jq_util_input_next_input_cb
	.bss
	.globl	jq_util_input_next_input_cb
	.p2align	3
jq_util_input_next_input_cb:
	.xword	0                               // 0x0
	.size	jq_util_input_next_input_cb, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Invalid jq_util_input API usage"
	.size	.L.str, 32
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
	.asciz	"<unknown>"
	.size	.L.str.1, 10
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s:%lu"
	.size	.L.str.2, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_get_input_cb
	.addrsig_sym assert
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_string_value
	.addrsig_sym jq_util_input_next_input_cb
	.addrsig_sym JV_KIND_STRING