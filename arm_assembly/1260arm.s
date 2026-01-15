	.text
	.globl	jv_string_split                 // -- Begin function jv_string_split
	.p2align	2
	.type	jv_string_split,@function
jv_string_split:                        // @jv_string_split
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	ldur	w0, [x29, #-4]
	adrp	x8, JV_KIND_STRING
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	w1, [x8, :lo12:JV_KIND_STRING]
	bl	JVP_HAS_KIND
	bl	assert
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	ldr	w1, [x8, :lo12:JV_KIND_STRING]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jv_string_value
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-4]
	bl	jv_copy
	bl	jv_string_length_bytes
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	add	x8, x8, w0, sxtw
	stur	x8, [x29, #-24]
	ldur	w0, [x29, #-8]
	bl	jv_string_value
	stur	x0, [x29, #-32]
	ldur	w0, [x29, #-8]
	bl	jv_copy
	bl	jv_string_length_bytes
	str	w0, [sp, #44]
	bl	jv_array
	str	w0, [sp, #40]
	ldr	w0, [sp, #40]
	bl	jv_get_refcnt
	subs	w8, w0, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #44]
	cbnz	w8, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	add	x2, sp, #36
	bl	jvp_utf8_next
	stur	x0, [x29, #-16]
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #40]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	ldr	w1, [sp, #36]
	bl	jv_string_append_codepoint
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	jv_array_append
	str	w0, [sp, #40]
	b	.LBB0_2
.LBB0_4:
	b	.LBB0_15
.LBB0_5:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-40]
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.hs	.LBB0_14
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	x0, [x29, #-40]
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	mov	w1, w8
	ldur	x2, [x29, #-32]
	ldr	w3, [sp, #44]
	bl	_jq_memmem
	str	x0, [sp, #48]
	ldr	x8, [sp, #48]
	cbnz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	x8, [x29, #-24]
	str	x8, [sp, #48]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #40]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-40]
	ldr	x8, [sp, #48]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	mov	w1, w8
	bl	jv_string_sized
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	jv_array_append
	str	w0, [sp, #40]
	ldr	x8, [sp, #48]
	ldrsw	x9, [sp, #44]
	add	x8, x8, x9
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.ne	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #44]
	cbz	w8, .LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #40]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	jv_array_append
	str	w0, [sp, #40]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	x8, [sp, #48]
	ldrsw	x9, [sp, #44]
	add	x8, x8, x9
	stur	x8, [x29, #-40]
	b	.LBB0_6
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldr	w0, [sp, #40]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	jv_string_split, .Lfunc_end0-jv_string_split
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
	.zero	1
	.size	.L.str, 1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym jv_array
	.addrsig_sym jv_get_refcnt
	.addrsig_sym jvp_utf8_next
	.addrsig_sym jv_array_append
	.addrsig_sym jv_string_append_codepoint
	.addrsig_sym jv_string
	.addrsig_sym _jq_memmem
	.addrsig_sym jv_string_sized
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING