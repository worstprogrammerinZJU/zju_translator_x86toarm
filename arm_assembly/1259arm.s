	.text
	.globl	jv_string_slice                 // -- Begin function jv_string_slice
	.p2align	2
	.type	jv_string_slice,@function
jv_string_slice:                        // @jv_string_slice
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	w0, [x29, #-8]
	sub	x8, x29, #12
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	stur	w1, [x29, #-12]
	sub	x8, x29, #16
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	stur	w2, [x29, #-16]
	ldur	w0, [x29, #-8]
	adrp	x8, JV_KIND_STRING
	ldr	w1, [x8, :lo12:JV_KIND_STRING]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-8]
	bl	jv_string_value
	stur	x0, [x29, #-24]
	ldur	w0, [x29, #-8]
	bl	jv_copy
	bl	jv_string_length_bytes
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldr	x2, [sp, #24]                   // 8-byte Folded Reload
	stur	w0, [x29, #-28]
	ldur	w0, [x29, #-28]
	bl	jvp_clamp_slice_params
	ldur	w10, [x29, #-12]
	mov	w9, wzr
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	b.gt	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	w9, [x29, #-12]
	ldur	w10, [x29, #-16]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	b.gt	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	cset	w8, le
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #36]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-40]
	stur	wzr, [x29, #-32]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	x0, [x29, #-40]
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-28]
	add	x1, x8, x9
	add	x2, sp, #44
	bl	jvp_utf8_next
	stur	x0, [x29, #-40]
	ldur	x8, [x29, #-40]
	cbnz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-8]
	bl	jv_free
	mov	w0, #16
	bl	jv_string_empty
	stur	w0, [x29, #-4]
	b	.LBB0_22
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #44]
	adds	w8, w8, #1
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	w0, [x29, #-8]
	bl	jv_free
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	b	.LBB0_22
.LBB0_9:                                //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_4
.LBB0_11:
	ldur	x8, [x29, #-40]
	str	x8, [sp, #48]
	b	.LBB0_12
.LBB0_12:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #48]
	mov	w9, #0
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	cbz	x8, .LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=1
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	cset	w8, lt
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_21
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_12 Depth=1
	ldr	x0, [sp, #48]
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-28]
	add	x1, x8, x9
	add	x2, sp, #44
	bl	jvp_utf8_next
	str	x0, [sp, #48]
	ldr	x8, [sp, #48]
	cbnz	x8, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-28]
	add	x8, x8, x9
	str	x8, [sp, #48]
	b	.LBB0_21
.LBB0_17:                               //   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [sp, #44]
	adds	w8, w8, #1
	b.ne	.LBB0_19
	b	.LBB0_18
.LBB0_18:
	ldur	w0, [x29, #-8]
	bl	jv_free
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	b	.LBB0_22
.LBB0_19:                               //   in Loop: Header=BB0_12 Depth=1
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_12 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_12
.LBB0_21:
	ldur	x0, [x29, #-40]
	ldr	x8, [sp, #48]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	mov	w1, w8
	bl	jv_string_sized
	str	w0, [sp, #40]
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldr	w8, [sp, #40]
	stur	w8, [x29, #-4]
	b	.LBB0_22
.LBB0_22:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	jv_string_slice, .Lfunc_end0-jv_string_slice
                                        // -- End function
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.word	0                               // 0x0
	.size	JV_KIND_STRING, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Invalid UTF-8 string"
	.size	.L.str, 21
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym jvp_clamp_slice_params
	.addrsig_sym jvp_utf8_next
	.addrsig_sym jv_free
	.addrsig_sym jv_string_empty
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym jv_string_sized
	.addrsig_sym JV_KIND_STRING