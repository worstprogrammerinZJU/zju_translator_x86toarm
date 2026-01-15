	.text
	.p2align	2                               // -- Begin function path_append
	.type	path_append,@function
path_append:                            // @path_append
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #12]
	bl	jv_copy
	bl	jv_array_length
	str	w0, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #12]
	ldur	w1, [x29, #-12]
	bl	jv_array_append
	ldur	x8, [x29, #-8]
	str	w0, [x8, #12]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #12]
	bl	jv_copy
	bl	jv_array_length
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	add	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	bl	jv_free
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	b	.LBB0_4
.LBB0_3:
	ldur	w0, [x29, #-12]
	bl	jv_free
	ldr	w0, [sp, #16]
	bl	jv_free
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	path_append, .Lfunc_end0-path_append
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
	.addrsig_sym path_append
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_array_append
	.addrsig_sym assert
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_ARRAY