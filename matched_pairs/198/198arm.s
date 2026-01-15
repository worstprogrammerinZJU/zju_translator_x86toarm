	.text
	.p2align	2                               // -- Begin function f_utf8bytelength
	.type	f_utf8bytelength,@function
f_utf8bytelength:                       // @f_utf8bytelength
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
	bl	jv_string_length_bytes
	bl	jv_number
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_utf8bytelength, .Lfunc_end0-f_utf8bytelength
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
	.asciz	"only strings have UTF-8 byte length"
	.size	.L.str, 36
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_utf8bytelength
	.addrsig_sym jv_get_kind
	.addrsig_sym type_error
	.addrsig_sym jv_number
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym JV_KIND_STRING