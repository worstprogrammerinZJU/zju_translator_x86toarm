	.text
	.p2align	2                               // -- Begin function f_multiply
	.type	f_multiply,@function
f_multiply:                             // @f_multiply
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	w2, [x29, #-24]
	stur	w3, [x29, #-28]
	ldur	w0, [x29, #-24]
	bl	jv_get_kind
	stur	x0, [x29, #-40]
	ldur	w0, [x29, #-28]
	bl	jv_get_kind
	str	x0, [sp, #48]
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldur	x8, [x29, #-40]
	adrp	x9, JV_KIND_NUMBER
	ldr	x9, [x9, :lo12:JV_KIND_NUMBER]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #48]
	adrp	x9, JV_KIND_NUMBER
	ldr	x9, [x9, :lo12:JV_KIND_NUMBER]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-24]
	bl	jv_number_value
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-28]
	bl	jv_number_value
	mov	w8, w0
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	mul	w0, w0, w8
	bl	jv_number
	str	w0, [sp, #44]
	ldur	w0, [x29, #-24]
	bl	jv_free
	ldur	w0, [x29, #-28]
	bl	jv_free
	ldr	w8, [sp, #44]
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_3:
	ldur	x8, [x29, #-40]
	adrp	x9, JV_KIND_STRING
	ldr	x9, [x9, :lo12:JV_KIND_STRING]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #48]
	adrp	x9, JV_KIND_NUMBER
	ldr	x9, [x9, :lo12:JV_KIND_NUMBER]
	subs	x8, x8, x9
	b.eq	.LBB0_7
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-40]
	adrp	x9, JV_KIND_NUMBER
	ldr	x9, [x9, :lo12:JV_KIND_NUMBER]
	subs	x8, x8, x9
	b.ne	.LBB0_16
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #48]
	adrp	x9, JV_KIND_STRING
	ldr	x9, [x9, :lo12:JV_KIND_STRING]
	subs	x8, x8, x9
	b.ne	.LBB0_16
	b	.LBB0_7
.LBB0_7:
	ldur	w8, [x29, #-24]
	str	w8, [sp, #40]
	ldur	w8, [x29, #-28]
	str	w8, [sp, #36]
	ldur	x8, [x29, #-40]
	adrp	x9, JV_KIND_NUMBER
	ldr	x9, [x9, :lo12:JV_KIND_NUMBER]
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	w8, [x29, #-28]
	str	w8, [sp, #40]
	ldur	w8, [x29, #-24]
	str	w8, [sp, #36]
	b	.LBB0_9
.LBB0_9:
	ldr	w0, [sp, #40]
	bl	jv_copy
	bl	jv_string_length_bytes
	str	x0, [sp, #24]
	ldr	w8, [sp, #40]
	str	w8, [sp, #20]
	ldr	w0, [sp, #36]
	bl	jv_number_value
	subs	w8, w0, #1
	str	w8, [sp, #32]
	b	.LBB0_10
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #32]
	subs	w8, w8, #0
	b.le	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #20]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldr	w0, [sp, #40]
	bl	jv_string_value
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldr	x2, [sp, #24]
	bl	jv_string_append_buf
	str	w0, [sp, #20]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #32]
	subs	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_10
.LBB0_13:
	ldr	w0, [sp, #36]
	bl	jv_free
	ldr	w8, [sp, #32]
	subs	w8, w8, #0
	b.ge	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldr	w0, [sp, #40]
	bl	jv_free
	bl	jv_null
	stur	w0, [x29, #-4]
	b	.LBB0_20
.LBB0_15:
	ldr	w8, [sp, #20]
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_16:
	ldur	x8, [x29, #-40]
	adrp	x9, JV_KIND_OBJECT
	ldr	x9, [x9, :lo12:JV_KIND_OBJECT]
	subs	x8, x8, x9
	b.ne	.LBB0_19
	b	.LBB0_17
.LBB0_17:
	ldr	x8, [sp, #48]
	adrp	x9, JV_KIND_OBJECT
	ldr	x9, [x9, :lo12:JV_KIND_OBJECT]
	subs	x8, x8, x9
	b.ne	.LBB0_19
	b	.LBB0_18
.LBB0_18:
	ldur	w0, [x29, #-24]
	ldur	w1, [x29, #-28]
	bl	jv_object_merge_recursive
	stur	w0, [x29, #-4]
	b	.LBB0_20
.LBB0_19:
	ldur	w0, [x29, #-24]
	ldur	w1, [x29, #-28]
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	type_error2
	stur	w0, [x29, #-4]
	b	.LBB0_20
.LBB0_20:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	f_multiply, .Lfunc_end0-f_multiply
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
	.type	JV_KIND_OBJECT,@object          // @JV_KIND_OBJECT
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.xword	0                               // 0x0
	.size	JV_KIND_OBJECT, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot be multiplied"
	.size	.L.str, 21
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_multiply
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free
	.addrsig_sym jv_number
	.addrsig_sym jv_number_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym jv_string_append_buf
	.addrsig_sym jv_string_value
	.addrsig_sym jv_null
	.addrsig_sym jv_object_merge_recursive
	.addrsig_sym type_error2
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_KIND_OBJECT