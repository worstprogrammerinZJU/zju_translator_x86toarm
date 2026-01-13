	.text
	.p2align	2                               // -- Begin function f_plus
	.type	f_plus,@function
f_plus:                                 // @f_plus
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	w2, [sp, #24]
	str	w3, [sp, #20]
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldr	w0, [sp, #24]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #24]
	bl	jv_free
	ldr	w8, [sp, #20]
	stur	w8, [x29, #-4]
	b	.LBB0_17
.LBB0_2:
	ldr	w0, [sp, #20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #20]
	bl	jv_free
	ldr	w8, [sp, #24]
	stur	w8, [x29, #-4]
	b	.LBB0_17
.LBB0_4:
	ldr	w0, [sp, #24]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	b.ne	.LBB0_7
	b	.LBB0_5
.LBB0_5:
	ldr	w0, [sp, #20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	w0, [sp, #24]
	bl	jv_number_value
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldr	w0, [sp, #20]
	bl	jv_number_value
	mov	x8, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	add	x0, x0, x8
	bl	jv_number
	str	w0, [sp, #16]
	ldr	w0, [sp, #24]
	bl	jv_free
	ldr	w0, [sp, #20]
	bl	jv_free
	ldr	w8, [sp, #16]
	stur	w8, [x29, #-4]
	b	.LBB0_17
.LBB0_7:
	ldr	w0, [sp, #24]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_10
	b	.LBB0_8
.LBB0_8:
	ldr	w0, [sp, #20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	w0, [sp, #24]
	ldr	w1, [sp, #20]
	bl	jv_string_concat
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_10:
	ldr	w0, [sp, #24]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.ne	.LBB0_13
	b	.LBB0_11
.LBB0_11:
	ldr	w0, [sp, #20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.ne	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	w0, [sp, #24]
	ldr	w1, [sp, #20]
	bl	jv_array_concat
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_13:
	ldr	w0, [sp, #24]
	bl	jv_get_kind
	adrp	x8, JV_KIND_OBJECT
	ldr	x8, [x8, :lo12:JV_KIND_OBJECT]
	subs	x8, x0, x8
	b.ne	.LBB0_16
	b	.LBB0_14
.LBB0_14:
	ldr	w0, [sp, #20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_OBJECT
	ldr	x8, [x8, :lo12:JV_KIND_OBJECT]
	subs	x8, x0, x8
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldr	w0, [sp, #24]
	ldr	w1, [sp, #20]
	bl	jv_object_merge
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_16:
	ldr	w0, [sp, #24]
	ldr	w1, [sp, #20]
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	type_error2
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_17:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	f_plus, .Lfunc_end0-f_plus
                                        // -- End function
	.type	JV_KIND_NULL,@object            // @JV_KIND_NULL
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.xword	0                               // 0x0
	.size	JV_KIND_NULL, 8
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
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
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.xword	0                               // 0x0
	.size	JV_KIND_ARRAY, 8
	.type	JV_KIND_OBJECT,@object          // @JV_KIND_OBJECT
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.xword	0                               // 0x0
	.size	JV_KIND_OBJECT, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot be added"
	.size	.L.str, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_plus
	.addrsig_sym jv_free
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_number
	.addrsig_sym jv_number_value
	.addrsig_sym jv_string_concat
	.addrsig_sym jv_array_concat
	.addrsig_sym jv_object_merge
	.addrsig_sym type_error2
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym JV_KIND_OBJECT