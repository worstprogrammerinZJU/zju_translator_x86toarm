	.text
	.p2align	2                               // -- Begin function f_endswith
	.type	f_endswith,@function
f_endswith:                             // @f_endswith
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	w2, [x29, #-24]
	ldur	w0, [x29, #-20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-24]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-20]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-24]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	bl	ret_error2
	stur	w0, [x29, #-4]
	b	.LBB0_8
.LBB0_3:
	ldur	w0, [x29, #-20]
	bl	jv_string_value
	stur	x0, [x29, #-32]
	ldur	w0, [x29, #-24]
	bl	jv_string_value
	str	x0, [sp, #40]
	ldur	w0, [x29, #-20]
	bl	jv_copy
	bl	jv_string_length_bytes
	str	x0, [sp, #32]
	ldur	w0, [x29, #-24]
	bl	jv_copy
	bl	jv_string_length_bytes
	str	x0, [sp, #24]
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.lo	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-32]
	ldr	x9, [sp, #32]
	ldr	x10, [sp, #24]
	subs	x9, x9, x10
	add	x0, x8, x9
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #24]
	bl	memcmp
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	bl	jv_false
	str	w0, [sp, #20]
	b	.LBB0_7
.LBB0_6:
	bl	jv_true
	str	w0, [sp, #20]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldur	w0, [x29, #-24]
	bl	jv_free
	ldr	w8, [sp, #20]
	stur	w8, [x29, #-4]
	b	.LBB0_8
.LBB0_8:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	f_endswith, .Lfunc_end0-f_endswith
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
	.asciz	"endswith() requires string inputs"
	.size	.L.str, 34
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_endswith
	.addrsig_sym jv_get_kind
	.addrsig_sym ret_error2
	.addrsig_sym jv_string
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym memcmp
	.addrsig_sym jv_false
	.addrsig_sym jv_true
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING