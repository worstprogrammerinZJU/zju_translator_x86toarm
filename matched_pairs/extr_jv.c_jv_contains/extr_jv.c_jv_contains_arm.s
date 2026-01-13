	.text
	.globl	jv_contains                     // -- Begin function jv_contains
	.p2align	2
	.type	jv_contains,@function
jv_contains:                            // @jv_contains
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-12]
	ldur	w0, [x29, #-4]
	bl	jv_get_kind
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_get_kind
	mov	x8, x0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	subs	x8, x0, x8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-12]
	b	.LBB0_15
.LBB0_2:
	ldur	w0, [x29, #-4]
	adrp	x8, JV_KIND_OBJECT
	ldr	w1, [x8, :lo12:JV_KIND_OBJECT]
	bl	JVP_HAS_KIND
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-8]
	bl	jvp_object_contains
	stur	w0, [x29, #-12]
	b	.LBB0_14
.LBB0_4:
	ldur	w0, [x29, #-4]
	adrp	x8, JV_KIND_ARRAY
	ldr	w1, [x8, :lo12:JV_KIND_ARRAY]
	bl	JVP_HAS_KIND
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-8]
	bl	jvp_array_contains
	stur	w0, [x29, #-12]
	b	.LBB0_13
.LBB0_6:
	ldur	w0, [x29, #-4]
	adrp	x8, JV_KIND_STRING
	ldr	w1, [x8, :lo12:JV_KIND_STRING]
	bl	JVP_HAS_KIND
	cbz	x0, .LBB0_11
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-8]
	bl	jv_copy
	bl	jv_string_length_bytes
	stur	w0, [x29, #-16]
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	w0, [x29, #-4]
	bl	jv_string_value
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-4]
	bl	jv_copy
	bl	jv_string_length_bytes
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_string_value
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	ldur	w3, [x29, #-16]
	bl	_jq_memmem
	subs	x8, x0, #0
	cset	w8, ne
	and	w8, w8, #0x1
	stur	w8, [x29, #-12]
	b	.LBB0_10
.LBB0_9:
	mov	w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_12
.LBB0_11:
	ldur	w0, [x29, #-4]
	bl	jv_copy
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	jv_equal
	stur	w0, [x29, #-12]
	b	.LBB0_12
.LBB0_12:
	b	.LBB0_13
.LBB0_13:
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldur	w0, [x29, #-12]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jv_contains, .Lfunc_end0-jv_contains
                                        // -- End function
	.type	JV_KIND_OBJECT,@object          // @JV_KIND_OBJECT
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	2
JV_KIND_OBJECT:
	.word	0                               // 0x0
	.size	JV_KIND_OBJECT, 4
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.globl	JV_KIND_ARRAY
	.p2align	2
JV_KIND_ARRAY:
	.word	0                               // 0x0
	.size	JV_KIND_ARRAY, 4
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.word	0                               // 0x0
	.size	JV_KIND_STRING, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_get_kind
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_object_contains
	.addrsig_sym jvp_array_contains
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym _jq_memmem
	.addrsig_sym jv_string_value
	.addrsig_sym jv_equal
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym JV_KIND_STRING