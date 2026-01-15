	.text
	.globl	_jq_path_append                 // -- Begin function _jq_path_append
	.p2align	2
	.type	_jq_path_append,@function
_jq_path_append:                        // @_jq_path_append
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	str	w2, [sp, #8]
	str	w3, [sp, #4]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w0, [sp, #4]
	bl	jv_is_valid
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #12]
	bl	jv_free
	ldr	w0, [sp, #8]
	bl	jv_free
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_4:
	ldr	w8, [sp, #12]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp]                        // 4-byte Folded Reload
	bl	jv_identical
	cbnz	w0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	w0, [sp, #8]
	bl	jv_free
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_6:
	ldr	w0, [sp, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #12]
	ldr	w1, [sp, #8]
	bl	jv_array_concat
	ldr	x8, [sp, #16]
	str	w0, [x8, #12]
	b	.LBB0_9
.LBB0_8:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #12]
	ldr	w1, [sp, #8]
	bl	jv_array_append
	ldr	x8, [sp, #16]
	str	w0, [x8, #12]
	b	.LBB0_9
.LBB0_9:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	bl	jv_free
	ldr	w0, [sp, #4]
	ldr	x8, [sp, #16]
	str	w0, [x8, #8]
	bl	jv_copy
	stur	w0, [x29, #-4]
	b	.LBB0_10
.LBB0_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	_jq_path_append, .Lfunc_end0-_jq_path_append
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.xword	0                               // 0x0
	.size	JV_KIND_ARRAY, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_free
	.addrsig_sym jv_identical
	.addrsig_sym jv_copy
	.addrsig_sym jv_array_concat
	.addrsig_sym jv_array_append
	.addrsig_sym JV_KIND_ARRAY