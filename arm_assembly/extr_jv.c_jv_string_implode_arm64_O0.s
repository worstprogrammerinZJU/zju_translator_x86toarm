	.text
	.globl	jv_string_implode               // -- Begin function jv_string_implode
	.p2align	2
	.type	jv_string_implode,@function
jv_string_implode:                      // @jv_string_implode
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	adrp	x8, JV_KIND_ARRAY
	ldr	w1, [x8, :lo12:JV_KIND_ARRAY]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jv_copy
	bl	jv_array_length
	stur	w0, [x29, #-8]
	ldur	w0, [x29, #-8]
	bl	jv_string_empty
	stur	w0, [x29, #-12]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #0
	cset	w8, ge
	and	w0, w8, #0x1
	bl	assert
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-4]
	bl	jv_copy
	ldr	w1, [sp, #16]
	bl	jv_array_get
	str	w0, [sp, #12]
	ldr	w0, [sp, #12]
	adrp	x8, JV_KIND_NUMBER
	ldr	w1, [x8, :lo12:JV_KIND_NUMBER]
	bl	JVP_HAS_KIND
	bl	assert
	ldr	w0, [sp, #12]
	bl	jv_number_value
	str	w0, [sp, #8]
	ldr	w0, [sp, #12]
	bl	jv_free
	ldr	w8, [sp, #8]
	subs	w8, w8, #272, lsl #12           // =1114112
	b.lt	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #65533
	str	w8, [sp, #8]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-12]
	ldr	w1, [sp, #8]
	bl	jv_string_append_codepoint
	stur	w0, [x29, #-12]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_6:
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldur	w0, [x29, #-12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_string_implode, .Lfunc_end0-jv_string_implode
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	2
JV_KIND_ARRAY:
	.word	0                               // 0x0
	.size	JV_KIND_ARRAY, 4
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.globl	JV_KIND_NUMBER
	.p2align	2
JV_KIND_NUMBER:
	.word	0                               // 0x0
	.size	JV_KIND_NUMBER, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_string_empty
	.addrsig_sym jv_array_get
	.addrsig_sym jv_number_value
	.addrsig_sym jv_free
	.addrsig_sym jv_string_append_codepoint
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym JV_KIND_NUMBER