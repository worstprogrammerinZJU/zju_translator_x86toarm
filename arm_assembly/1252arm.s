	.text
	.globl	jv_string_explode               // -- Begin function jv_string_explode
	.p2align	2
	.type	jv_string_explode,@function
jv_string_explode:                      // @jv_string_explode
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	adrp	x8, JV_KIND_STRING
	ldr	w1, [x8, :lo12:JV_KIND_STRING]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jv_string_value
	stur	x0, [x29, #-16]
	ldur	w0, [x29, #-4]
	bl	jv_copy
	bl	jv_string_length_bytes
	stur	w0, [x29, #-20]
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	add	x8, x8, x9
	str	x8, [sp, #16]
	ldur	w0, [x29, #-20]
	bl	jv_array_sized
	str	w0, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	add	x2, sp, #8
	bl	jvp_utf8_next
	stur	x0, [x29, #-16]
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	w0, [sp, #8]
	bl	jv_number
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	jv_array_append
	str	w0, [sp, #12]
	b	.LBB0_1
.LBB0_3:
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jv_string_explode, .Lfunc_end0-jv_string_explode
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
	.addrsig_sym jv_array_sized
	.addrsig_sym jvp_utf8_next
	.addrsig_sym jv_array_append
	.addrsig_sym jv_number
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING