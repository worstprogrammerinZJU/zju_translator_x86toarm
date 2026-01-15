	.text
	.globl	jq_util_input_get_current_filename // -- Begin function jq_util_input_get_current_filename
	.p2align	2
	.type	jq_util_input_get_current_filename,@function
jq_util_input_get_current_filename:     // @jq_util_input_get_current_filename
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	add	x1, sp, #24
	str	xzr, [sp, #24]
	add	x2, sp, #16
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #16]
	ldur	x0, [x29, #-16]
	bl	jq_get_input_cb
	ldr	x8, [sp, #24]
	adrp	x9, jq_util_input_next_input_cb
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
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	jv_copy
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jq_util_input_get_current_filename, .Lfunc_end0-jq_util_input_get_current_filename
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
	.asciz	"Unknown input filename"
	.size	.L.str, 23
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_get_input_cb
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym jv_copy
	.addrsig_sym jq_util_input_next_input_cb