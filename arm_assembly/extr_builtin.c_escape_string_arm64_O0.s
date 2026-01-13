	.text
	.p2align	2                               // -- Begin function escape_string
	.type	escape_string,@function
escape_string:                          // @escape_string
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #1104
	sub	x8, x29, #16
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	str	x1, [x8]
	ldur	w0, [x29, #-4]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	add	x0, sp, #64
	mov	w1, wzr
	mov	x2, #1024
	bl	memset
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #56]
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	str	x8, [sp, #64]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #56]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	add	x8, x8, #1
	ldr	x9, [sp, #56]
	ldrb	w10, [x9]
	add	x9, sp, #64
	str	x8, [x9, w10, sxtw #3]
	ldr	x8, [sp, #56]
	add	x8, x8, #1
	str	x8, [sp, #56]
	ldr	x0, [sp, #56]
	bl	strlen
	ldr	x8, [sp, #56]
	add	x8, x8, w0, sxtw
	str	x8, [sp, #56]
	ldr	x8, [sp, #56]
	add	x8, x8, #1
	str	x8, [sp, #56]
	b	.LBB0_1
.LBB0_3:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string
	str	w0, [sp, #52]
	ldur	w0, [x29, #-4]
	bl	jv_string_value
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	w0, [x29, #-4]
	bl	jv_copy
	bl	jv_string_length_bytes
	ldr	x8, [sp]                        // 8-byte Folded Reload
	add	x8, x8, w0, sxtw
	str	x8, [sp, #32]
	str	wzr, [sp, #20]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #40]
	str	x0, [sp, #24]
	ldr	x1, [sp, #32]
	add	x2, sp, #20
	bl	jvp_utf8_next
	str	x0, [sp, #40]
	cbz	x0, .LBB0_10
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #128
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldrsw	x9, [sp, #20]
	add	x8, sp, #64
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w0, [sp, #52]
	ldrsw	x9, [sp, #20]
	add	x8, sp, #64
	ldr	x1, [x8, x9, lsl #3]
	bl	jv_string_append_str
	str	w0, [sp, #52]
	b	.LBB0_9
.LBB0_8:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w0, [sp, #52]
	ldr	x1, [sp, #24]
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	mov	w2, w8
	bl	jv_string_append_buf
	str	w0, [sp, #52]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_4
.LBB0_10:
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldr	w0, [sp, #52]
	add	sp, sp, #1104
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	escape_string, .Lfunc_end0-escape_string
                                        // -- End function
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\0"
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym escape_string
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym strlen
	.addrsig_sym jv_string
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym jvp_utf8_next
	.addrsig_sym jv_string_append_str
	.addrsig_sym jv_string_append_buf
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING