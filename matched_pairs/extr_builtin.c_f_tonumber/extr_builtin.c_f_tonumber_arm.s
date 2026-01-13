	.text
	.p2align	2                               // -- Begin function f_tonumber
	.type	f_tonumber,@function
f_tonumber:                             // @f_tonumber
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	w0, [sp, #12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_8
.LBB0_2:
	ldr	w0, [sp, #12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_7
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #12]
	bl	jv_string_value
	bl	jv_parse
	str	w0, [sp, #8]
	ldr	w0, [sp, #8]
	bl	jv_is_valid
	cbz	w0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	w0, [sp, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	w0, [sp, #12]
	bl	jv_free
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_8
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	ldr	w0, [sp, #12]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	type_error
	stur	w0, [x29, #-4]
	b	.LBB0_8
.LBB0_8:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_tonumber, .Lfunc_end0-f_tonumber
                                        // -- End function
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.xword	0                               // 0x0
	.size	JV_KIND_NUMBER, 8
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot be parsed as a number"
	.size	.L.str, 29
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_tonumber
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_parse
	.addrsig_sym jv_string_value
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_free
	.addrsig_sym type_error
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JV_KIND_STRING