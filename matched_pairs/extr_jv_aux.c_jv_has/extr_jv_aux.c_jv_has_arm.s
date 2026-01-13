	.text
	.globl	jv_has                          // -- Begin function jv_has
	.p2align	2
	.type	jv_has,@function
jv_has:                                 // @jv_has
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	ldur	w0, [x29, #-4]
	bl	jv_is_valid
	bl	assert
	ldur	w0, [x29, #-8]
	bl	jv_is_valid
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldur	w0, [x29, #-8]
	bl	jv_free
	bl	jv_false
	stur	w0, [x29, #-12]
	b	.LBB0_11
.LBB0_2:
	ldur	w0, [x29, #-4]
	bl	jv_get_kind
	adrp	x8, JV_KIND_OBJECT
	ldr	x8, [x8, :lo12:JV_KIND_OBJECT]
	subs	x8, x0, x8
	b.ne	.LBB0_5
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-8]
	bl	jv_object_get
	str	w0, [sp, #16]
	ldr	w0, [sp, #16]
	bl	jv_is_valid
	bl	jv_bool
	stur	w0, [x29, #-12]
	ldr	w0, [sp, #16]
	bl	jv_free
	b	.LBB0_10
.LBB0_5:
	ldur	w0, [x29, #-4]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.ne	.LBB0_8
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	w8, [x29, #-4]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_number_value
	mov	x8, x0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	mov	w1, w8
	bl	jv_array_get
	str	w0, [sp, #12]
	ldr	w0, [sp, #12]
	bl	jv_is_valid
	bl	jv_bool
	stur	w0, [x29, #-12]
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldr	w0, [sp, #12]
	bl	jv_free
	b	.LBB0_9
.LBB0_8:
	ldur	w0, [x29, #-4]
	bl	jv_get_kind
	bl	jv_kind_name
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_get_kind
	bl	jv_kind_name
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w2, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string_fmt
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-12]
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldur	w0, [x29, #-8]
	bl	jv_free
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	ldur	w0, [x29, #-12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_has, .Lfunc_end0-jv_has
                                        // -- End function
	.type	JV_KIND_NULL,@object            // @JV_KIND_NULL
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.xword	0                               // 0x0
	.size	JV_KIND_NULL, 8
	.type	JV_KIND_OBJECT,@object          // @JV_KIND_OBJECT
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.xword	0                               // 0x0
	.size	JV_KIND_OBJECT, 8
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
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.xword	0                               // 0x0
	.size	JV_KIND_NUMBER, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cannot check whether %s has a %s key"
	.size	.L.str, 37
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free
	.addrsig_sym jv_false
	.addrsig_sym jv_object_get
	.addrsig_sym jv_bool
	.addrsig_sym jv_array_get
	.addrsig_sym jv_number_value
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_kind_name
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym JV_KIND_NUMBER