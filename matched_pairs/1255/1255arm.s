	.text
	.globl	jv_string_indexes               // -- Begin function jv_string_indexes
	.p2align	2
	.type	jv_string_indexes,@function
jv_string_indexes:                      // @jv_string_indexes
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	ldur	w0, [x29, #-4]
	adrp	x8, JV_KIND_STRING
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w1, [x8, :lo12:JV_KIND_STRING]
	bl	JVP_HAS_KIND
	bl	assert
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	ldr	w1, [x8, :lo12:JV_KIND_STRING]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jv_string_value
	stur	x0, [x29, #-16]
	ldur	w0, [x29, #-8]
	bl	jv_string_value
	stur	x0, [x29, #-24]
	ldur	w0, [x29, #-4]
	bl	jv_copy
	bl	jv_string_length_bytes
	str	w0, [sp, #28]
	ldur	w0, [x29, #-8]
	bl	jv_copy
	bl	jv_string_length_bytes
	str	w0, [sp, #24]
	bl	jv_array
	str	w0, [sp, #20]
	ldr	w8, [sp, #24]
	cbz	w8, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #32]
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #28]
	add	x8, x8, x9
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	mov	w1, w8
	ldur	x2, [x29, #-24]
	ldr	w3, [sp, #24]
	bl	_jq_memmem
	str	x0, [sp, #32]
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #20]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	mov	w0, w8
	bl	jv_number
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	jv_array_append
	str	w0, [sp, #20]
	ldrsw	x9, [sp, #24]
	ldr	x8, [sp, #32]
	add	x8, x8, x9
	str	x8, [sp, #32]
	b	.LBB0_2
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldr	w0, [sp, #20]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	jv_string_indexes, .Lfunc_end0-jv_string_indexes
                                        // -- End function
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.word	0                               // 0x0
	.size	JV_KIND_STRING, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym jv_array
	.addrsig_sym _jq_memmem
	.addrsig_sym jv_array_append
	.addrsig_sym jv_number
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING