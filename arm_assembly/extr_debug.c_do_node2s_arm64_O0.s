	.text
	.p2align	2                               // -- Begin function do_node2s
	.type	do_node2s,@function
do_node2s:                              // @do_node2s
// %bb.0:
	sub	sp, sp, #336
	stp	x29, x30, [sp, #304]            // 16-byte Folded Spill
	str	x28, [sp, #320]                 // 8-byte Folded Spill
	add	x29, sp, #304
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	buf_printf
	b	.LBB0_95
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w8, w8, #33
                                        // kill: def $x8 killed $w8
	stur	x8, [x29, #-64]                 // 8-byte Folded Spill
	subs	x8, x8, #146
	b.hi	.LBB0_91
// %bb.3:
	ldur	x11, [x29, #-64]                // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #48]
	ldr	w8, [x8]
	subs	w8, w8, #153
                                        // kill: def $x8 killed $w8
	stur	x8, [x29, #-72]                 // 8-byte Folded Spill
	subs	x8, x8, #7
	b.hi	.LBB0_21
// %bb.5:
	ldur	x11, [x29, #-72]                // 8-byte Folded Reload
	adrp	x10, .LJTI0_1
	add	x10, x10, :lo12:.LJTI0_1
.Ltmp1:
	adr	x8, .Ltmp1
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_6:
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #4]
	subs	w8, w8, #10
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	buf_printf
	b	.LBB0_15
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #4]
	subs	w8, w8, #92
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	buf_printf
	b	.LBB0_14
.LBB0_10:
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #4]
	cbnz	w8, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	buf_printf
	b	.LBB0_13
.LBB0_12:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldrb	w2, [x8, #4]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	buf_printf
	b	.LBB0_13
.LBB0_13:
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_22
.LBB0_16:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldrb	w2, [x8, #4]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	buf_printf
	b	.LBB0_22
.LBB0_17:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldrb	w2, [x8, #4]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	buf_printf
	b	.LBB0_22
.LBB0_18:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldrb	w2, [x8, #4]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	buf_printf
	b	.LBB0_22
.LBB0_19:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #180]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	buf_printf
	b	.LBB0_22
.LBB0_20:
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-80]                 // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #176]
	bl	quote_cstring
	mov	w2, w0
	ldur	x0, [x29, #-80]                 // 8-byte Folded Reload
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	buf_printf
	b	.LBB0_22
.LBB0_21:
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	bl	error
	b	.LBB0_22
.LBB0_22:
	b	.LBB0_95
.LBB0_23:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #32]
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	buf_printf
	b	.LBB0_95
.LBB0_24:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #168]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	bl	buf_printf
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #172]
	cbz	w8, .LBB0_26
	b	.LBB0_25
.LBB0_25:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	bl	buf_printf
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #172]
	bl	a2s_declinit
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	buf_printf
	b	.LBB0_26
.LBB0_26:
	b	.LBB0_95
.LBB0_27:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #168]
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	bl	buf_printf
	b	.LBB0_95
.LBB0_28:
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-96]                 // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #48]
	bl	ty2s
	stur	x0, [x29, #-88]                 // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w8, w8, #173
	b.ne	.LBB0_30
	b	.LBB0_29
.LBB0_29:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	stur	x0, [x29, #-104]                // 8-byte Folded Spill
	b	.LBB0_31
.LBB0_30:
	ldur	x0, [x29, #-16]
	bl	node2s
	stur	x0, [x29, #-104]                // 8-byte Folded Spill
	b	.LBB0_31
.LBB0_31:
	ldur	x2, [x29, #-88]                 // 8-byte Folded Reload
	ldur	x0, [x29, #-96]                 // 8-byte Folded Reload
	ldur	x3, [x29, #-104]                // 8-byte Folded Reload
	adrp	x1, .L.str.16
	add	x1, x1, :lo12:.L.str.16
	bl	buf_printf
	stur	wzr, [x29, #-20]
	b	.LBB0_32
.LBB0_32:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-108]                // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #164]
	bl	vec_len
	ldur	w8, [x29, #-108]                // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_37
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_32 Depth=1
	ldur	w8, [x29, #-20]
	subs	w8, w8, #0
	b.le	.LBB0_35
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_32 Depth=1
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.17
	add	x1, x1, :lo12:.L.str.17
	bl	buf_printf
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_32 Depth=1
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-120]                // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #164]
	ldur	w1, [x29, #-20]
	bl	vec_get
	bl	node2s
	mov	x2, x0
	ldur	x0, [x29, #-120]                // 8-byte Folded Reload
	adrp	x1, .L.str.18
	add	x1, x1, :lo12:.L.str.18
	bl	buf_printf
	b	.LBB0_36
.LBB0_36:                               //   in Loop: Header=BB0_32 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_32
.LBB0_37:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	buf_printf
	b	.LBB0_95
.LBB0_38:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	x2, [x8, #8]
	adrp	x1, .L.str.19
	add	x1, x1, :lo12:.L.str.19
	bl	buf_printf
	b	.LBB0_95
.LBB0_39:
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-128]                // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #48]
	bl	ty2s
	mov	x2, x0
	ldur	x0, [x29, #-128]                // 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x3, [x8, #8]
	adrp	x1, .L.str.16
	add	x1, x1, :lo12:.L.str.16
	bl	buf_printf
	stur	wzr, [x29, #-24]
	b	.LBB0_40
.LBB0_40:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-24]
	stur	w8, [x29, #-132]                // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #160]
	bl	vec_len
	ldur	w8, [x29, #-132]                // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_45
	b	.LBB0_41
.LBB0_41:                               //   in Loop: Header=BB0_40 Depth=1
	ldur	w8, [x29, #-24]
	subs	w8, w8, #0
	b.le	.LBB0_43
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_40 Depth=1
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.17
	add	x1, x1, :lo12:.L.str.17
	bl	buf_printf
	b	.LBB0_43
.LBB0_43:                               //   in Loop: Header=BB0_40 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #160]
	ldur	w1, [x29, #-24]
	bl	vec_get
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-144]                // 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #48]
	bl	ty2s
	str	x0, [sp, #152]                  // 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	node2s
	ldr	x2, [sp, #152]                  // 8-byte Folded Reload
	mov	x3, x0
	ldur	x0, [x29, #-144]                // 8-byte Folded Reload
	adrp	x1, .L.str.20
	add	x1, x1, :lo12:.L.str.20
	bl	buf_printf
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_40 Depth=1
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_40
.LBB0_45:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	buf_printf
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #152]
	bl	do_node2s
	b	.LBB0_95
.LBB0_46:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #32]
	adrp	x1, .L.str.21
	add	x1, x1, :lo12:.L.str.21
	bl	buf_printf
	b	.LBB0_95
.LBB0_47:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #144]                  // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #144]
	ldr	x0, [x8, #8]
	bl	ty2s
	mov	x2, x0
	ldr	x0, [sp, #144]                  // 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #144]
	ldr	x3, [x8]
	adrp	x1, .L.str.22
	add	x1, x1, :lo12:.L.str.22
	bl	buf_printf
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #136]
	cbz	w8, .LBB0_49
	b	.LBB0_48
.LBB0_48:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.23
	add	x1, x1, :lo12:.L.str.23
	bl	buf_printf
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #136]
	bl	a2s_declinit
	b	.LBB0_49
.LBB0_49:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	buf_printf
	b	.LBB0_95
.LBB0_50:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #136]                  // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #128]
	bl	node2s
	str	x0, [sp, #120]                  // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #120]
	str	w8, [sp, #132]                  // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #112]
	bl	ty2s
	ldr	x2, [sp, #120]                  // 8-byte Folded Reload
	ldr	w3, [sp, #132]                  // 4-byte Folded Reload
	mov	x4, x0
	ldr	x0, [sp, #136]                  // 8-byte Folded Reload
	adrp	x1, .L.str.24
	add	x1, x1, :lo12:.L.str.24
	bl	buf_printf
	b	.LBB0_95
.LBB0_51:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #112]                  // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #40]
	bl	node2s
	str	x0, [sp, #104]                  // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #48]
	bl	ty2s
	ldr	x2, [sp, #104]                  // 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #112]                  // 8-byte Folded Reload
	adrp	x1, .L.str.25
	add	x1, x1, :lo12:.L.str.25
	bl	buf_printf
	b	.LBB0_95
.LBB0_52:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #96]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #104]
	bl	node2s
	str	x0, [sp, #88]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #96]
	bl	node2s
	ldr	x2, [sp, #88]                   // 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	adrp	x1, .L.str.26
	add	x1, x1, :lo12:.L.str.26
	bl	buf_printf
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #88]
	cbz	x8, .LBB0_54
	b	.LBB0_53
.LBB0_53:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #80]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #88]
	bl	node2s
	mov	x2, x0
	ldr	x0, [sp, #80]                   // 8-byte Folded Reload
	adrp	x1, .L.str.27
	add	x1, x1, :lo12:.L.str.27
	bl	buf_printf
	b	.LBB0_54
.LBB0_54:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	buf_printf
	b	.LBB0_95
.LBB0_55:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #72]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #104]
	bl	node2s
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #96]
	bl	node2s
	str	x0, [sp, #64]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #88]
	bl	node2s
	ldr	x2, [sp, #56]                   // 8-byte Folded Reload
	ldr	x3, [sp, #64]                   // 8-byte Folded Reload
	mov	x4, x0
	ldr	x0, [sp, #72]                   // 8-byte Folded Reload
	adrp	x1, .L.str.28
	add	x1, x1, :lo12:.L.str.28
	bl	buf_printf
	b	.LBB0_95
.LBB0_56:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #80]
	bl	node2s
	mov	x2, x0
	ldr	x0, [sp, #48]                   // 8-byte Folded Reload
	adrp	x1, .L.str.29
	add	x1, x1, :lo12:.L.str.29
	bl	buf_printf
	b	.LBB0_95
.LBB0_57:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.30
	add	x1, x1, :lo12:.L.str.30
	bl	buf_printf
	stur	wzr, [x29, #-36]
	b	.LBB0_58
.LBB0_58:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-36]
	str	w8, [sp, #44]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #72]
	bl	vec_len
	ldr	w8, [sp, #44]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_61
	b	.LBB0_59
.LBB0_59:                               //   in Loop: Header=BB0_58 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #72]
	ldur	w1, [x29, #-36]
	bl	vec_get
	mov	x1, x0
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	bl	do_node2s
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.31
	add	x1, x1, :lo12:.L.str.31
	bl	buf_printf
	b	.LBB0_60
.LBB0_60:                               //   in Loop: Header=BB0_58 Depth=1
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	.LBB0_58
.LBB0_61:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.32
	add	x1, x1, :lo12:.L.str.32
	bl	buf_printf
	b	.LBB0_95
.LBB0_62:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #64]
	bl	do_node2s
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.33
	add	x1, x1, :lo12:.L.str.33
	bl	buf_printf
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldrsw	x1, [x8, #56]
	bl	buf_printf
	b	.LBB0_95
.LBB0_63:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.34
	add	x1, x1, :lo12:.L.str.34
	bl	uop_to_string
	b	.LBB0_95
.LBB0_64:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.35
	add	x1, x1, :lo12:.L.str.35
	bl	uop_to_string
	b	.LBB0_95
.LBB0_65:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.36
	add	x1, x1, :lo12:.L.str.36
	bl	binop_to_string
	b	.LBB0_95
.LBB0_66:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.37
	add	x1, x1, :lo12:.L.str.37
	bl	binop_to_string
	b	.LBB0_95
.LBB0_67:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.38
	add	x1, x1, :lo12:.L.str.38
	bl	binop_to_string
	b	.LBB0_95
.LBB0_68:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.39
	add	x1, x1, :lo12:.L.str.39
	bl	binop_to_string
	b	.LBB0_95
.LBB0_69:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.40
	add	x1, x1, :lo12:.L.str.40
	bl	binop_to_string
	b	.LBB0_95
.LBB0_70:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.41
	add	x1, x1, :lo12:.L.str.41
	bl	uop_to_string
	b	.LBB0_95
.LBB0_71:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.42
	add	x1, x1, :lo12:.L.str.42
	bl	uop_to_string
	b	.LBB0_95
.LBB0_72:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.43
	add	x1, x1, :lo12:.L.str.43
	bl	uop_to_string
	b	.LBB0_95
.LBB0_73:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.44
	add	x1, x1, :lo12:.L.str.44
	bl	uop_to_string
	b	.LBB0_95
.LBB0_74:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.45
	add	x1, x1, :lo12:.L.str.45
	bl	binop_to_string
	b	.LBB0_95
.LBB0_75:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.46
	add	x1, x1, :lo12:.L.str.46
	bl	binop_to_string
	b	.LBB0_95
.LBB0_76:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.47
	add	x1, x1, :lo12:.L.str.47
	bl	binop_to_string
	b	.LBB0_95
.LBB0_77:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.48
	add	x1, x1, :lo12:.L.str.48
	bl	binop_to_string
	b	.LBB0_95
.LBB0_78:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.49
	add	x1, x1, :lo12:.L.str.49
	bl	binop_to_string
	b	.LBB0_95
.LBB0_79:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.50
	add	x1, x1, :lo12:.L.str.50
	bl	binop_to_string
	b	.LBB0_95
.LBB0_80:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.51
	add	x1, x1, :lo12:.L.str.51
	bl	binop_to_string
	b	.LBB0_95
.LBB0_81:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.52
	add	x1, x1, :lo12:.L.str.52
	bl	binop_to_string
	b	.LBB0_95
.LBB0_82:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.53
	add	x1, x1, :lo12:.L.str.53
	bl	binop_to_string
	b	.LBB0_95
.LBB0_83:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.54
	add	x1, x1, :lo12:.L.str.54
	bl	binop_to_string
	b	.LBB0_95
.LBB0_84:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.55
	add	x1, x1, :lo12:.L.str.55
	bl	binop_to_string
	b	.LBB0_95
.LBB0_85:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.56
	add	x1, x1, :lo12:.L.str.56
	bl	binop_to_string
	b	.LBB0_95
.LBB0_86:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.57
	add	x1, x1, :lo12:.L.str.57
	bl	uop_to_string
	b	.LBB0_95
.LBB0_87:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.58
	add	x1, x1, :lo12:.L.str.58
	bl	binop_to_string
	b	.LBB0_95
.LBB0_88:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.59
	add	x1, x1, :lo12:.L.str.59
	bl	binop_to_string
	b	.LBB0_95
.LBB0_89:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #40]
	ldr	x0, [x8, #48]
	bl	ty2s
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #48]
	bl	ty2s
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #40]
	bl	node2s
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	x4, x0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	adrp	x1, .L.str.60
	add	x1, x1, :lo12:.L.str.60
	bl	buf_printf
	b	.LBB0_95
.LBB0_90:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #32]
	adrp	x1, .L.str.61
	add	x1, x1, :lo12:.L.str.61
	bl	buf_printf
	b	.LBB0_95
.LBB0_91:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #24]
	bl	node2s
	stur	x0, [x29, #-48]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	node2s
	stur	x0, [x29, #-56]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	adrp	x9, OP_EQ
	ldr	w9, [x9, :lo12:OP_EQ]
	subs	w8, w8, w9
	b.ne	.LBB0_93
	b	.LBB0_92
.LBB0_92:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.62
	add	x1, x1, :lo12:.L.str.62
	bl	buf_printf
	b	.LBB0_94
.LBB0_93:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8]
	adrp	x1, .L.str.63
	add	x1, x1, :lo12:.L.str.63
	bl	buf_printf
	b	.LBB0_94
.LBB0_94:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-48]
	ldur	x3, [x29, #-56]
	adrp	x1, .L.str.64
	add	x1, x1, :lo12:.L.str.64
	bl	buf_printf
	b	.LBB0_95
.LBB0_95:
	ldr	x28, [sp, #320]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #304]            // 16-byte Folded Reload
	add	sp, sp, #336
	ret
.Lfunc_end0:
	.size	do_node2s, .Lfunc_end0-do_node2s
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_86-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_87-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_88-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_65-.Ltmp0
	.word	.LBB0_70-.Ltmp0
	.word	.LBB0_71-.Ltmp0
	.word	.LBB0_72-.Ltmp0
	.word	.LBB0_73-.Ltmp0
	.word	.LBB0_69-.Ltmp0
	.word	.LBB0_75-.Ltmp0
	.word	.LBB0_74-.Ltmp0
	.word	.LBB0_68-.Ltmp0
	.word	.LBB0_90-.Ltmp0
	.word	.LBB0_67-.Ltmp0
	.word	.LBB0_89-.Ltmp0
	.word	.LBB0_83-.Ltmp0
	.word	.LBB0_77-.Ltmp0
	.word	.LBB0_85-.Ltmp0
	.word	.LBB0_85-.Ltmp0
	.word	.LBB0_84-.Ltmp0
	.word	.LBB0_82-.Ltmp0
	.word	.LBB0_78-.Ltmp0
	.word	.LBB0_80-.Ltmp0
	.word	.LBB0_79-.Ltmp0
	.word	.LBB0_81-.Ltmp0
	.word	.LBB0_76-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_91-.Ltmp0
	.word	.LBB0_55-.Ltmp0
	.word	.LBB0_62-.Ltmp0
	.word	.LBB0_56-.Ltmp0
	.word	.LBB0_24-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_23-.Ltmp0
	.word	.LBB0_50-.Ltmp0
	.word	.LBB0_52-.Ltmp0
	.word	.LBB0_27-.Ltmp0
	.word	.LBB0_46-.Ltmp0
	.word	.LBB0_28-.Ltmp0
	.word	.LBB0_38-.Ltmp0
	.word	.LBB0_28-.Ltmp0
	.word	.LBB0_39-.Ltmp0
	.word	.LBB0_64-.Ltmp0
	.word	.LBB0_47-.Ltmp0
	.word	.LBB0_51-.Ltmp0
	.word	.LBB0_57-.Ltmp0
	.word	.LBB0_63-.Ltmp0
	.p2align	2
.LJTI0_1:
	.word	.LBB0_17-.Ltmp1
	.word	.LBB0_18-.Ltmp1
	.word	.LBB0_19-.Ltmp1
	.word	.LBB0_16-.Ltmp1
	.word	.LBB0_19-.Ltmp1
	.word	.LBB0_19-.Ltmp1
	.word	.LBB0_6-.Ltmp1
	.word	.LBB0_20-.Ltmp1
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(nil)"
	.size	.L.str, 6
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"'\n'"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"'\\\\'"
	.size	.L.str.2, 5
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"'\\0'"
	.size	.L.str.3, 5
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"'%c'"
	.size	.L.str.4, 5
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"%d"
	.size	.L.str.5, 3
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"%ldL"
	.size	.L.str.6, 5
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"%lldL"
	.size	.L.str.7, 6
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"%f"
	.size	.L.str.8, 3
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"\"%s\""
	.size	.L.str.9, 5
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"internal error"
	.size	.L.str.10, 15
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"%s:"
	.size	.L.str.11, 4
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"lv=%s"
	.size	.L.str.12, 6
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"("
	.size	.L.str.13, 2
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	")"
	.size	.L.str.14, 2
	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"gv=%s"
	.size	.L.str.15, 6
	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"(%s)%s("
	.size	.L.str.16, 8
	.type	.L.str.17,@object               // @.str.17
.L.str.17:
	.asciz	","
	.size	.L.str.17, 2
	.type	.L.str.18,@object               // @.str.18
.L.str.18:
	.asciz	"%s"
	.size	.L.str.18, 3
	.type	.L.str.19,@object               // @.str.19
.L.str.19:
	.asciz	"(funcdesg %s)"
	.size	.L.str.19, 14
	.type	.L.str.20,@object               // @.str.20
.L.str.20:
	.asciz	"%s %s"
	.size	.L.str.20, 6
	.type	.L.str.21,@object               // @.str.21
.L.str.21:
	.asciz	"goto(%s)"
	.size	.L.str.21, 9
	.type	.L.str.22,@object               // @.str.22
.L.str.22:
	.asciz	"(decl %s %s"
	.size	.L.str.22, 12
	.type	.L.str.23,@object               // @.str.23
.L.str.23:
	.asciz	" "
	.size	.L.str.23, 2
	.type	.L.str.24,@object               // @.str.24
.L.str.24:
	.asciz	"%s@%d"
	.size	.L.str.24, 6
	.type	.L.str.25,@object               // @.str.25
.L.str.25:
	.asciz	"(conv %s=>%s)"
	.size	.L.str.25, 14
	.type	.L.str.26,@object               // @.str.26
.L.str.26:
	.asciz	"(if %s %s"
	.size	.L.str.26, 10
	.type	.L.str.27,@object               // @.str.27
.L.str.27:
	.asciz	" %s"
	.size	.L.str.27, 4
	.type	.L.str.28,@object               // @.str.28
.L.str.28:
	.asciz	"(? %s %s %s)"
	.size	.L.str.28, 13
	.type	.L.str.29,@object               // @.str.29
.L.str.29:
	.asciz	"(return %s)"
	.size	.L.str.29, 12
	.type	.L.str.30,@object               // @.str.30
.L.str.30:
	.asciz	"{"
	.size	.L.str.30, 2
	.type	.L.str.31,@object               // @.str.31
.L.str.31:
	.asciz	";"
	.size	.L.str.31, 2
	.type	.L.str.32,@object               // @.str.32
.L.str.32:
	.asciz	"}"
	.size	.L.str.32, 2
	.type	.L.str.33,@object               // @.str.33
.L.str.33:
	.asciz	"."
	.size	.L.str.33, 2
	.type	.L.str.34,@object               // @.str.34
.L.str.34:
	.asciz	"addr"
	.size	.L.str.34, 5
	.type	.L.str.35,@object               // @.str.35
.L.str.35:
	.asciz	"deref"
	.size	.L.str.35, 6
	.type	.L.str.36,@object               // @.str.36
.L.str.36:
	.asciz	"<<"
	.size	.L.str.36, 3
	.type	.L.str.37,@object               // @.str.37
.L.str.37:
	.asciz	">>"
	.size	.L.str.37, 3
	.type	.L.str.38,@object               // @.str.38
.L.str.38:
	.asciz	">="
	.size	.L.str.38, 3
	.type	.L.str.39,@object               // @.str.39
.L.str.39:
	.asciz	"<="
	.size	.L.str.39, 3
	.type	.L.str.40,@object               // @.str.40
.L.str.40:
	.asciz	"!="
	.size	.L.str.40, 3
	.type	.L.str.41,@object               // @.str.41
.L.str.41:
	.asciz	"pre++"
	.size	.L.str.41, 6
	.type	.L.str.42,@object               // @.str.42
.L.str.42:
	.asciz	"pre--"
	.size	.L.str.42, 6
	.type	.L.str.43,@object               // @.str.43
.L.str.43:
	.asciz	"post++"
	.size	.L.str.43, 7
	.type	.L.str.44,@object               // @.str.44
.L.str.44:
	.asciz	"post--"
	.size	.L.str.44, 7
	.type	.L.str.45,@object               // @.str.45
.L.str.45:
	.asciz	"and"
	.size	.L.str.45, 4
	.type	.L.str.46,@object               // @.str.46
.L.str.46:
	.asciz	"or"
	.size	.L.str.46, 3
	.type	.L.str.47,@object               // @.str.47
.L.str.47:
	.asciz	"+="
	.size	.L.str.47, 3
	.type	.L.str.48,@object               // @.str.48
.L.str.48:
	.asciz	"-="
	.size	.L.str.48, 3
	.type	.L.str.49,@object               // @.str.49
.L.str.49:
	.asciz	"*="
	.size	.L.str.49, 3
	.type	.L.str.50,@object               // @.str.50
.L.str.50:
	.asciz	"/="
	.size	.L.str.50, 3
	.type	.L.str.51,@object               // @.str.51
.L.str.51:
	.asciz	"%="
	.size	.L.str.51, 3
	.type	.L.str.52,@object               // @.str.52
.L.str.52:
	.asciz	"&="
	.size	.L.str.52, 3
	.type	.L.str.53,@object               // @.str.53
.L.str.53:
	.asciz	"|="
	.size	.L.str.53, 3
	.type	.L.str.54,@object               // @.str.54
.L.str.54:
	.asciz	"^="
	.size	.L.str.54, 3
	.type	.L.str.55,@object               // @.str.55
.L.str.55:
	.asciz	"<<="
	.size	.L.str.55, 4
	.type	.L.str.56,@object               // @.str.56
.L.str.56:
	.asciz	">>="
	.size	.L.str.56, 4
	.type	.L.str.57,@object               // @.str.57
.L.str.57:
	.asciz	"!"
	.size	.L.str.57, 2
	.type	.L.str.58,@object               // @.str.58
.L.str.58:
	.asciz	"&"
	.size	.L.str.58, 2
	.type	.L.str.59,@object               // @.str.59
.L.str.59:
	.asciz	"|"
	.size	.L.str.59, 2
	.type	.L.str.60,@object               // @.str.60
.L.str.60:
	.asciz	"((%s)=>(%s) %s)"
	.size	.L.str.60, 16
	.type	.L.str.61,@object               // @.str.61
.L.str.61:
	.asciz	"&&%s"
	.size	.L.str.61, 5
	.type	OP_EQ,@object                   // @OP_EQ
	.section	.rodata,"a",@progbits
	.globl	OP_EQ
	.p2align	2
OP_EQ:
	.word	0                               // 0x0
	.size	OP_EQ, 4
	.type	.L.str.62,@object               // @.str.62
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.62:
	.asciz	"(== "
	.size	.L.str.62, 5
	.type	.L.str.63,@object               // @.str.63
.L.str.63:
	.asciz	"(%c "
	.size	.L.str.63, 5
	.type	.L.str.64,@object               // @.str.64
.L.str.64:
	.asciz	"%s %s)"
	.size	.L.str.64, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_node2s
	.addrsig_sym buf_printf
	.addrsig_sym quote_cstring
	.addrsig_sym error
	.addrsig_sym a2s_declinit
	.addrsig_sym ty2s
	.addrsig_sym node2s
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym uop_to_string
	.addrsig_sym binop_to_string
	.addrsig_sym OP_EQ