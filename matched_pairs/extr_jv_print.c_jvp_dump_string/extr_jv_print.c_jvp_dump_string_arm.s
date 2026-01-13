	.text
	.p2align	2                               // -- Begin function jvp_dump_string
	.type	jvp_dump_string,@function
jvp_dump_string:                        // @jvp_dump_string
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	x2, [x29, #-16]
	stur	x3, [x29, #-24]
	stur	w4, [x29, #-28]
	ldur	w0, [x29, #-4]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jv_string_value
	stur	x0, [x29, #-40]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	w0, [x29, #-4]
	bl	jv_copy
	bl	jv_string_length_bytes
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	add	x8, x8, w0, sxtw
	stur	x8, [x29, #-48]
	str	wzr, [sp, #52]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	mov	w0, #34
	bl	put_char
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-40]
	str	x0, [sp, #56]
	ldur	x1, [x29, #-48]
	add	x2, sp, #52
	bl	jvp_utf8_next
	stur	x0, [x29, #-40]
	cbz	x0, .LBB0_30
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]
	adds	w8, w8, #1
	cset	w8, ne
	and	w0, w8, #0x1
	bl	assert
	str	wzr, [sp, #16]
	ldr	w9, [sp, #52]
	mov	w8, #32
	subs	w8, w8, w9
	b.gt	.LBB0_8
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]
	subs	w8, w8, #126
	b.gt	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]
	subs	w8, w8, #34
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]
	subs	w8, w8, #92
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	mov	w0, #92
	bl	put_char
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w0, [sp, #52]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	bl	put_char
	b	.LBB0_24
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]
	subs	w8, w8, #32
	b.lt	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]
	subs	w8, w8, #127
	b.ne	.LBB0_19
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]
	subs	w8, w8, #8
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #5
	b.hi	.LBB0_17
// %bb.11:                              //   in Loop: Header=BB0_1 Depth=1
	ldr	x11, [sp]                       // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	mov	w0, #92
	bl	put_char
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	mov	w0, #98
	bl	put_char
	b	.LBB0_18
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	mov	w0, #92
	bl	put_char
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	mov	w0, #116
	bl	put_char
	b	.LBB0_18
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	mov	w0, #92
	bl	put_char
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	mov	w0, #114
	bl	put_char
	b	.LBB0_18
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	mov	w0, #92
	bl	put_char
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	mov	w0, #110
	bl	put_char
	b	.LBB0_18
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	mov	w0, #92
	bl	put_char
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	mov	w0, #102
	bl	put_char
	b	.LBB0_18
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	str	w8, [sp, #16]
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_23
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-8]
	cbz	w8, .LBB0_21
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	str	w8, [sp, #16]
	b	.LBB0_22
.LBB0_21:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #56]
	ldur	x8, [x29, #-40]
	ldr	x9, [sp, #56]
	subs	x8, x8, x9
	mov	w1, w8
	ldur	x2, [x29, #-16]
	ldur	x3, [x29, #-24]
	ldur	w4, [x29, #-28]
	bl	put_buf
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	cbz	w8, .LBB0_29
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]
	subs	w8, w8, #16, lsl #12            // =65536
	b.ge	.LBB0_27
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w3, [sp, #52]
	add	x0, sp, #20
	mov	w1, #32
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	snprintf
	b	.LBB0_28
.LBB0_27:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]
	subs	w8, w8, #16, lsl #12            // =65536
	str	w8, [sp, #52]
	ldr	w8, [sp, #52]
	and	w9, w8, #0xffc00
	mov	w8, #55296
	orr	w3, w8, w9, asr #10
	ldr	w8, [sp, #52]
	and	w9, w8, #0x3ff
	mov	w8, #56320
	orr	w4, w8, w9
	add	x0, sp, #20
	mov	w1, #32
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	snprintf
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	add	x0, sp, #20
	bl	put_str
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_30:
	ldr	w8, [sp, #52]
	adds	w8, w8, #1
	cset	w8, ne
	and	w0, w8, #0x1
	bl	assert
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	mov	w0, #34
	bl	put_char
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	jvp_dump_string, .Lfunc_end0-jvp_dump_string
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_17-.Ltmp0
	.word	.LBB0_16-.Ltmp0
	.word	.LBB0_14-.Ltmp0
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
	.asciz	"\\u%04x"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"\\u%04x\\u%04x"
	.size	.L.str.1, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_dump_string
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym put_char
	.addrsig_sym jvp_utf8_next
	.addrsig_sym put_buf
	.addrsig_sym snprintf
	.addrsig_sym put_str
	.addrsig_sym JV_KIND_STRING