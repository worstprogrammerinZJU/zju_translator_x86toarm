	.text
	.p2align	2                               // -- Begin function f_json_parse
	.type	f_json_parse,@function
f_json_parse:                           // @f_json_parse
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	w0, [sp, #12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #12]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	type_error
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	w0, [sp, #12]
	bl	jv_string_value
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	ldr	w0, [sp, #12]
	bl	jv_copy
	bl	jv_string_length_bytes
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	jv_parse_sized
	str	w0, [sp, #8]
	ldr	w0, [sp, #12]
	bl	jv_free
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_json_parse, .Lfunc_end0-f_json_parse
                                        // -- End function
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"only strings can be parsed"
	.size	.L.str, 27
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_json_parse
	.addrsig_sym jv_get_kind
	.addrsig_sym type_error
	.addrsig_sym jv_parse_sized
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING