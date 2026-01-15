	.text
	.p2align	2                               // -- Begin function stream_token
	.type	stream_token,@function
stream_token:                           // @stream_token
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-16]
	sturb	w1, [x29, #-17]
	ldurb	w8, [x29, #-17]
	stur	w8, [x29, #-40]                 // 4-byte Folded Spill
	subs	w8, w8, #44
	b.eq	.LBB0_23
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-40]                 // 4-byte Folded Reload
	subs	w8, w8, #58
	b.eq	.LBB0_12
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-40]                 // 4-byte Folded Reload
	subs	w8, w8, #91
	b.eq	.LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-40]                 // 4-byte Folded Reload
	subs	w8, w8, #93
	b.eq	.LBB0_38
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-40]                 // 4-byte Folded Reload
	subs	w8, w8, #123
	b.eq	.LBB0_9
	b	.LBB0_5
.LBB0_5:
	ldur	w8, [x29, #-40]                 // 4-byte Folded Reload
	subs	w8, w8, #125
	b.eq	.LBB0_57
	b	.LBB0_87
.LBB0_6:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #32]
	bl	jv_is_valid
	cbz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-48]                 // 8-byte Folded Spill
	mov	w0, wzr
	bl	jv_number
	mov	x1, x0
	ldur	x0, [x29, #-48]                 // 8-byte Folded Reload
	bl	jv_array_append
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	adrp	x8, JV_LAST_OPEN_ARRAY
	ldr	x8, [x8, :lo12:JV_LAST_OPEN_ARRAY]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #8]
	add	w8, w8, #1
	str	w8, [x9, #8]
	b	.LBB0_87
.LBB0_9:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_VALUE
	ldr	x9, [x9, :lo12:JV_LAST_VALUE]
	subs	x8, x8, x9
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_11:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-56]                 // 8-byte Folded Spill
	bl	jv_null
	mov	x1, x0
	ldur	x0, [x29, #-56]                 // 8-byte Folded Reload
	bl	jv_array_append
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	adrp	x8, JV_LAST_OPEN_OBJECT
	ldr	x8, [x8, :lo12:JV_LAST_OPEN_OBJECT]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #8]
	add	w8, w8, #1
	str	w8, [x9, #8]
	b	.LBB0_87
.LBB0_12:
	bl	jv_invalid
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	cbz	w8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_copy
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w1, w8, #1
	bl	jv_array_get
	mov	x8, x0
	stur	x8, [x29, #-32]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	w8, [x8, :lo12:JV_KIND_NUMBER]
	subs	w8, w0, w8
	b.ne	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldur	x0, [x29, #-32]
	bl	jv_free
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_15:
	ldur	x0, [x29, #-32]
	bl	jv_free
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #32]
	bl	jv_is_valid
	cbz	w0, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_NONE
	ldr	x9, [x9, :lo12:JV_LAST_NONE]
	subs	x8, x8, x9
	b.ne	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_18:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #32]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	w8, [x8, :lo12:JV_KIND_STRING]
	subs	w8, w0, w8
	b.eq	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_20:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_VALUE
	ldr	x9, [x9, :lo12:JV_LAST_VALUE]
	subs	x8, x8, x9
	b.eq	.LBB0_22
	b	.LBB0_21
.LBB0_21:
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_22:
	adrp	x8, JV_LAST_COLON
	ldr	x8, [x8, :lo12:JV_LAST_COLON]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w1, w8, #1
	ldur	x8, [x29, #-16]
	ldr	x2, [x8, #32]
	bl	jv_array_set
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	bl	jv_invalid
	ldur	x8, [x29, #-16]
	str	x0, [x8, #32]
	b	.LBB0_87
.LBB0_23:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_VALUE
	ldr	x9, [x9, :lo12:JV_LAST_VALUE]
	subs	x8, x8, x9
	b.eq	.LBB0_25
	b	.LBB0_24
.LBB0_24:
	adrp	x8, .L.str.5
	add	x8, x8, :lo12:.L.str.5
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_25:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	cbnz	w8, .LBB0_27
	b	.LBB0_26
.LBB0_26:
	adrp	x8, .L.str.6
	add	x8, x8, :lo12:.L.str.6
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_27:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_copy
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w1, w8, #1
	bl	jv_array_get
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	jv_get_kind
	stur	w0, [x29, #-24]
	ldur	w8, [x29, #-24]
	adrp	x9, JV_KIND_NUMBER
	ldr	w9, [x9, :lo12:JV_KIND_NUMBER]
	subs	w8, w8, w9
	b.ne	.LBB0_31
	b	.LBB0_28
.LBB0_28:
	ldur	x0, [x29, #-32]
	bl	jv_number_value
	stur	w0, [x29, #-36]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #32]
	bl	jv_is_valid
	cbz	w0, .LBB0_30
	b	.LBB0_29
.LBB0_29:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_copy
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #32]
	bl	JV_ARRAY
	ldur	x8, [x29, #-16]
	str	x0, [x8, #24]
	bl	jv_invalid
	ldur	x8, [x29, #-16]
	str	x0, [x8, #32]
	b	.LBB0_30
.LBB0_30:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #64]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w8, w8, #1
	str	w8, [sp, #60]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-36]
	add	w0, w8, #1
	bl	jv_number
	ldr	w1, [sp, #60]                   // 4-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #64]                   // 8-byte Folded Reload
	bl	jv_array_set
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	adrp	x8, JV_LAST_COMMA
	ldr	x8, [x8, :lo12:JV_LAST_COMMA]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	.LBB0_37
.LBB0_31:
	ldur	w8, [x29, #-24]
	adrp	x9, JV_KIND_STRING
	ldr	w9, [x9, :lo12:JV_KIND_STRING]
	subs	w8, w8, w9
	b.ne	.LBB0_35
	b	.LBB0_32
.LBB0_32:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #32]
	bl	jv_is_valid
	cbz	w0, .LBB0_34
	b	.LBB0_33
.LBB0_33:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_copy
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #32]
	bl	JV_ARRAY
	ldur	x8, [x29, #-16]
	str	x0, [x8, #24]
	bl	jv_invalid
	ldur	x8, [x29, #-16]
	str	x0, [x8, #32]
	b	.LBB0_34
.LBB0_34:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w8, w8, #1
	str	w8, [sp, #44]                   // 4-byte Folded Spill
	bl	jv_true
	ldr	w1, [sp, #44]                   // 4-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #48]                   // 8-byte Folded Reload
	bl	jv_array_set
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	adrp	x8, JV_LAST_COMMA
	ldr	x8, [x8, :lo12:JV_LAST_COMMA]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	.LBB0_36
.LBB0_35:
	ldur	w8, [x29, #-24]
	adrp	x9, JV_KIND_NULL
	ldr	w9, [x9, :lo12:JV_KIND_NULL]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-32]
	bl	jv_free
	adrp	x8, .L.str.7
	add	x8, x8, :lo12:.L.str.7
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_36:
	b	.LBB0_37
.LBB0_37:
	ldur	x0, [x29, #-32]
	bl	jv_free
	b	.LBB0_87
.LBB0_38:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	cbnz	w8, .LBB0_40
	b	.LBB0_39
.LBB0_39:
	adrp	x8, .L.str.8
	add	x8, x8, :lo12:.L.str.8
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_40:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_COMMA
	ldr	x9, [x9, :lo12:JV_LAST_COMMA]
	subs	x8, x8, x9
	b.ne	.LBB0_42
	b	.LBB0_41
.LBB0_41:
	adrp	x8, .L.str.9
	add	x8, x8, :lo12:.L.str.9
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_42:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_OPEN_ARRAY
	ldr	x9, [x9, :lo12:JV_LAST_OPEN_ARRAY]
	subs	x8, x8, x9
	b.ne	.LBB0_44
	b	.LBB0_43
.LBB0_43:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #32]
	bl	jv_is_valid
	subs	w8, w0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	b	.LBB0_44
.LBB0_44:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_copy
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w1, w8, #1
	bl	jv_array_get
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	jv_get_kind
	stur	w0, [x29, #-24]
	ldur	x0, [x29, #-32]
	bl	jv_free
	ldur	w8, [x29, #-24]
	adrp	x9, JV_KIND_NUMBER
	ldr	w9, [x9, :lo12:JV_KIND_NUMBER]
	subs	w8, w8, w9
	b.eq	.LBB0_46
	b	.LBB0_45
.LBB0_45:
	adrp	x8, .L.str.10
	add	x8, x8, :lo12:.L.str.10
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_46:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #32]
	bl	jv_is_valid
	cbz	w0, .LBB0_48
	b	.LBB0_47
.LBB0_47:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_copy
	str	w0, [sp, #40]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	bl	jv_true
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	mov	x2, x0
	ldr	w0, [sp, #40]                   // 4-byte Folded Reload
	bl	JV_ARRAY
	ldur	x8, [x29, #-16]
	str	x0, [x8, #24]
	bl	jv_invalid
	ldur	x8, [x29, #-16]
	str	x0, [x8, #32]
	b	.LBB0_51
.LBB0_48:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_OPEN_ARRAY
	ldr	x9, [x9, :lo12:JV_LAST_OPEN_ARRAY]
	subs	x8, x8, x9
	b.eq	.LBB0_50
	b	.LBB0_49
.LBB0_49:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_copy
	bl	JV_ARRAY
	ldur	x8, [x29, #-16]
	str	x0, [x8, #24]
	b	.LBB0_50
.LBB0_50:
	b	.LBB0_51
.LBB0_51:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	ldur	x8, [x29, #-16]
	ldr	w9, [x8, #8]
	subs	w2, w9, #1
	str	w2, [x8, #8]
	mov	w1, wzr
	bl	jv_array_slice
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #32]
	bl	jv_free
	bl	jv_invalid
	ldur	x8, [x29, #-16]
	str	x0, [x8, #32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_OPEN_ARRAY
	ldr	x9, [x9, :lo12:JV_LAST_OPEN_ARRAY]
	subs	x8, x8, x9
	b.ne	.LBB0_53
	b	.LBB0_52
.LBB0_52:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_copy
	str	w0, [sp, #28]                   // 4-byte Folded Spill
	bl	jv_array
	mov	x1, x0
	ldr	w0, [sp, #28]                   // 4-byte Folded Reload
	bl	JV_ARRAY
	ldur	x8, [x29, #-16]
	str	x0, [x8, #24]
	b	.LBB0_53
.LBB0_53:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	cbnz	w8, .LBB0_55
	b	.LBB0_54
.LBB0_54:
	adrp	x8, JV_LAST_NONE
	ldr	x8, [x8, :lo12:JV_LAST_NONE]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	.LBB0_56
.LBB0_55:
	adrp	x8, JV_LAST_VALUE
	ldr	x8, [x8, :lo12:JV_LAST_VALUE]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	.LBB0_56
.LBB0_56:
	b	.LBB0_87
.LBB0_57:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	cbnz	w8, .LBB0_59
	b	.LBB0_58
.LBB0_58:
	adrp	x8, .L.str.11
	add	x8, x8, :lo12:.L.str.11
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_59:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_COMMA
	ldr	x9, [x9, :lo12:JV_LAST_COMMA]
	subs	x8, x8, x9
	b.ne	.LBB0_61
	b	.LBB0_60
.LBB0_60:
	adrp	x8, .L.str.12
	add	x8, x8, :lo12:.L.str.12
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_61:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_OPEN_OBJECT
	ldr	x9, [x9, :lo12:JV_LAST_OPEN_OBJECT]
	subs	x8, x8, x9
	b.ne	.LBB0_63
	b	.LBB0_62
.LBB0_62:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #32]
	bl	jv_is_valid
	subs	w8, w0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	b	.LBB0_63
.LBB0_63:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_copy
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w1, w8, #1
	bl	jv_array_get
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	jv_get_kind
	stur	w0, [x29, #-24]
	ldur	x0, [x29, #-32]
	bl	jv_free
	ldur	w8, [x29, #-24]
	adrp	x9, JV_KIND_NUMBER
	ldr	w9, [x9, :lo12:JV_KIND_NUMBER]
	subs	w8, w8, w9
	b.ne	.LBB0_65
	b	.LBB0_64
.LBB0_64:
	adrp	x8, .L.str.13
	add	x8, x8, :lo12:.L.str.13
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_65:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #32]
	bl	jv_is_valid
	cbz	w0, .LBB0_69
	b	.LBB0_66
.LBB0_66:
	ldur	w8, [x29, #-24]
	adrp	x9, JV_KIND_STRING
	ldr	w9, [x9, :lo12:JV_KIND_STRING]
	subs	w8, w8, w9
	b.eq	.LBB0_68
	b	.LBB0_67
.LBB0_67:
	adrp	x8, .L.str.7
	add	x8, x8, :lo12:.L.str.7
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_68:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_copy
	str	w0, [sp, #24]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	bl	jv_true
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	mov	x2, x0
	ldr	w0, [sp, #24]                   // 4-byte Folded Reload
	bl	JV_ARRAY
	ldur	x8, [x29, #-16]
	str	x0, [x8, #24]
	bl	jv_invalid
	ldur	x8, [x29, #-16]
	str	x0, [x8, #32]
	b	.LBB0_81
.LBB0_69:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_COLON
	ldr	x9, [x9, :lo12:JV_LAST_COLON]
	subs	x8, x8, x9
	b.ne	.LBB0_71
	b	.LBB0_70
.LBB0_70:
	adrp	x8, .L.str.14
	add	x8, x8, :lo12:.L.str.14
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_71:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_COMMA
	ldr	x9, [x9, :lo12:JV_LAST_COMMA]
	subs	x8, x8, x9
	b.ne	.LBB0_73
	b	.LBB0_72
.LBB0_72:
	adrp	x8, .L.str.15
	add	x8, x8, :lo12:.L.str.15
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_73:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_OPEN_ARRAY
	ldr	x9, [x9, :lo12:JV_LAST_OPEN_ARRAY]
	subs	x8, x8, x9
	b.ne	.LBB0_75
	b	.LBB0_74
.LBB0_74:
	adrp	x8, .L.str.13
	add	x8, x8, :lo12:.L.str.13
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_75:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_VALUE
	ldr	x9, [x9, :lo12:JV_LAST_VALUE]
	subs	x8, x8, x9
	b.eq	.LBB0_78
	b	.LBB0_76
.LBB0_76:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_OPEN_OBJECT
	ldr	x9, [x9, :lo12:JV_LAST_OPEN_OBJECT]
	subs	x8, x8, x9
	b.eq	.LBB0_78
	b	.LBB0_77
.LBB0_77:
	adrp	x8, .L.str.16
	add	x8, x8, :lo12:.L.str.16
	stur	x8, [x29, #-8]
	b	.LBB0_88
.LBB0_78:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_OPEN_OBJECT
	ldr	x9, [x9, :lo12:JV_LAST_OPEN_OBJECT]
	subs	x8, x8, x9
	b.eq	.LBB0_80
	b	.LBB0_79
.LBB0_79:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_copy
	bl	JV_ARRAY
	ldur	x8, [x29, #-16]
	str	x0, [x8, #24]
	b	.LBB0_80
.LBB0_80:
	b	.LBB0_81
.LBB0_81:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	ldur	x8, [x29, #-16]
	ldr	w9, [x8, #8]
	subs	w2, w9, #1
	str	w2, [x8, #8]
	mov	w1, wzr
	bl	jv_array_slice
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #32]
	bl	jv_free
	bl	jv_invalid
	ldur	x8, [x29, #-16]
	str	x0, [x8, #32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, JV_LAST_OPEN_OBJECT
	ldr	x9, [x9, :lo12:JV_LAST_OPEN_OBJECT]
	subs	x8, x8, x9
	b.ne	.LBB0_83
	b	.LBB0_82
.LBB0_82:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_copy
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	bl	jv_object
	mov	x1, x0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	JV_ARRAY
	ldur	x8, [x29, #-16]
	str	x0, [x8, #24]
	b	.LBB0_83
.LBB0_83:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	cbnz	w8, .LBB0_85
	b	.LBB0_84
.LBB0_84:
	adrp	x8, JV_LAST_NONE
	ldr	x8, [x8, :lo12:JV_LAST_NONE]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	.LBB0_86
.LBB0_85:
	adrp	x8, JV_LAST_VALUE
	ldr	x8, [x8, :lo12:JV_LAST_VALUE]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	.LBB0_86
.LBB0_86:
	b	.LBB0_87
.LBB0_87:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_88
.LBB0_88:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	stream_token, .Lfunc_end0-stream_token
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Expected a separator between values"
	.size	.L.str, 36
	.type	JV_LAST_OPEN_ARRAY,@object      // @JV_LAST_OPEN_ARRAY
	.bss
	.globl	JV_LAST_OPEN_ARRAY
	.p2align	3
JV_LAST_OPEN_ARRAY:
	.xword	0
	.size	JV_LAST_OPEN_ARRAY, 8
	.type	JV_LAST_VALUE,@object           // @JV_LAST_VALUE
	.globl	JV_LAST_VALUE
	.p2align	3
JV_LAST_VALUE:
	.xword	0
	.size	JV_LAST_VALUE, 8
	.type	JV_LAST_OPEN_OBJECT,@object     // @JV_LAST_OPEN_OBJECT
	.globl	JV_LAST_OPEN_OBJECT
	.p2align	3
JV_LAST_OPEN_OBJECT:
	.xword	0
	.size	JV_LAST_OPEN_OBJECT, 8
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.globl	JV_KIND_NUMBER
	.p2align	2
JV_KIND_NUMBER:
	.word	0                               // 0x0
	.size	JV_KIND_NUMBER, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"':' not as part of an object"
	.size	.L.str.1, 29
	.type	JV_LAST_NONE,@object            // @JV_LAST_NONE
	.bss
	.globl	JV_LAST_NONE
	.p2align	3
JV_LAST_NONE:
	.xword	0
	.size	JV_LAST_NONE, 8
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Expected string key before ':'"
	.size	.L.str.2, 31
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.word	0                               // 0x0
	.size	JV_KIND_STRING, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Object keys must be strings"
	.size	.L.str.3, 28
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"':' should follow a key"
	.size	.L.str.4, 24
	.type	JV_LAST_COLON,@object           // @JV_LAST_COLON
	.bss
	.globl	JV_LAST_COLON
	.p2align	3
JV_LAST_COLON:
	.xword	0
	.size	JV_LAST_COLON, 8
	.type	.L.str.5,@object                // @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"Expected value before ','"
	.size	.L.str.5, 26
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"',' not as part of an object or array"
	.size	.L.str.6, 38
	.type	JV_LAST_COMMA,@object           // @JV_LAST_COMMA
	.bss
	.globl	JV_LAST_COMMA
	.p2align	3
JV_LAST_COMMA:
	.xword	0
	.size	JV_LAST_COMMA, 8
	.type	JV_KIND_NULL,@object            // @JV_KIND_NULL
	.globl	JV_KIND_NULL
	.p2align	2
JV_KIND_NULL:
	.word	0                               // 0x0
	.size	JV_KIND_NULL, 4
	.type	.L.str.7,@object                // @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Objects must consist of key:value pairs"
	.size	.L.str.7, 40
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"Unmatched ']' at the top-level"
	.size	.L.str.8, 31
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"Expected another array element"
	.size	.L.str.9, 31
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"Unmatched ']' in the middle of an object"
	.size	.L.str.10, 41
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"Unmatched '}' at the top-level"
	.size	.L.str.11, 31
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"Expected another key:value pair"
	.size	.L.str.12, 32
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"Unmatched '}' in the middle of an array"
	.size	.L.str.13, 40
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"Missing value in key:value pair"
	.size	.L.str.14, 32
	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"Expected another key-value pair"
	.size	.L.str.15, 32
	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"Unmatched '}'"
	.size	.L.str.16, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stream_token
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_array_append
	.addrsig_sym jv_number
	.addrsig_sym jv_null
	.addrsig_sym jv_invalid
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_get
	.addrsig_sym jv_copy
	.addrsig_sym jv_free
	.addrsig_sym jv_array_set
	.addrsig_sym jv_number_value
	.addrsig_sym JV_ARRAY
	.addrsig_sym jv_true
	.addrsig_sym assert
	.addrsig_sym jv_array_slice
	.addrsig_sym jv_array
	.addrsig_sym jv_object
	.addrsig_sym JV_LAST_OPEN_ARRAY
	.addrsig_sym JV_LAST_VALUE
	.addrsig_sym JV_LAST_OPEN_OBJECT
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JV_LAST_NONE
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_LAST_COLON
	.addrsig_sym JV_LAST_COMMA
	.addrsig_sym JV_KIND_NULL