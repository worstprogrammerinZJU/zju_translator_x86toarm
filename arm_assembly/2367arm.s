	.text
	.p2align	2                               // -- Begin function swr_convert_internal
	.type	swr_convert_internal,@function
swr_convert_internal:                   // @swr_convert_internal
// %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	stur	x3, [x29, #-40]
	stur	w4, [x29, #-44]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #304]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #192]
	subs	w8, w8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	av_assert0
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #304]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-40]
	ldur	w3, [x29, #-44]
	bl	swri_audio_convert
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-4]
	b	.LBB0_102
.LBB0_2:
	ldur	x8, [x29, #-16]
	add	x0, x8, #272
	ldur	w1, [x29, #-44]
	bl	swri_realloc_audio
	stur	w0, [x29, #-76]
	subs	w8, w0, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-76]
	stur	w8, [x29, #-4]
	b	.LBB0_102
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #152]
	cbz	x8, .LBB0_8
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #240]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	av_assert0
	ldur	x8, [x29, #-16]
	add	x0, x8, #240
	ldur	w1, [x29, #-28]
	bl	swri_realloc_audio
	stur	w0, [x29, #-76]
	subs	w8, w0, #0
	b.ge	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	w8, [x29, #-76]
	stur	w8, [x29, #-4]
	b	.LBB0_102
.LBB0_7:
	b	.LBB0_11
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #240]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #176]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	av_assert0
	ldur	x8, [x29, #-16]
	add	x0, x8, #240
	ldur	w1, [x29, #-44]
	bl	swri_realloc_audio
	stur	w0, [x29, #-76]
	subs	w8, w0, #0
	b.ge	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	w8, [x29, #-76]
	stur	w8, [x29, #-4]
	b	.LBB0_102
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	ldur	x8, [x29, #-16]
	add	x0, x8, #208
	ldur	w1, [x29, #-28]
	bl	swri_realloc_audio
	stur	w0, [x29, #-76]
	subs	w8, w0, #0
	b.ge	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldur	w8, [x29, #-76]
	stur	w8, [x29, #-4]
	b	.LBB0_102
.LBB0_13:
	ldur	x8, [x29, #-16]
	add	x8, x8, #272
	stur	x8, [x29, #-56]
	ldur	x9, [x29, #-16]
	ldr	q0, [x9, #240]
	add	x8, sp, #32
	str	q0, [sp, #32]
	ldr	q0, [x9, #256]
	str	q0, [sp, #48]
	stur	x8, [x29, #-64]
	ldur	x9, [x29, #-16]
	ldr	q0, [x9, #208]
	add	x8, sp, #64
	str	q0, [sp, #64]
	ldr	q0, [x9, #224]
	str	q0, [sp, #80]
	stur	x8, [x29, #-72]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	b.ne	.LBB0_17
	b	.LBB0_14
.LBB0_14:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #168]
	cbz	w8, .LBB0_17
	b	.LBB0_15
.LBB0_15:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #200]
	cbnz	w8, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-56]
	b	.LBB0_17
.LBB0_17:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #152]
	cbz	x8, .LBB0_19
	b	.LBB0_18
.LBB0_18:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #192]
	cbnz	w8, .LBB0_21
	b	.LBB0_20
.LBB0_19:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #196]
	cbnz	w8, .LBB0_21
	b	.LBB0_20
.LBB0_20:
	ldur	x8, [x29, #-56]
	stur	x8, [x29, #-64]
	b	.LBB0_21
.LBB0_21:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #152]
	cbz	x8, .LBB0_23
	b	.LBB0_22
.LBB0_22:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #196]
	cbnz	w8, .LBB0_25
	b	.LBB0_24
.LBB0_23:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #192]
	cbnz	w8, .LBB0_25
	b	.LBB0_24
.LBB0_24:
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-72]
	b	.LBB0_25
.LBB0_25:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #16]
	subs	w8, w8, w9
	b.ne	.LBB0_39
	b	.LBB0_26
.LBB0_26:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #184]
	cbz	x8, .LBB0_39
	b	.LBB0_27
.LBB0_27:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #16]
	subs	w8, w8, #128
	b.ne	.LBB0_29
	b	.LBB0_28
.LBB0_28:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #32]
	and	w8, w8, #0x1f
	cbnz	w8, .LBB0_39
	b	.LBB0_29
.LBB0_29:
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	b.ne	.LBB0_31
	b	.LBB0_30
.LBB0_30:
	ldur	w0, [x29, #-28]
	ldur	w1, [x29, #-44]
	bl	FFMIN
	stur	w0, [x29, #-28]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #168]
	bl	av_assert0
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-40]
	ldur	w2, [x29, #-28]
	bl	copy
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-4]
	b	.LBB0_102
.LBB0_31:
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-56]
	subs	x8, x8, x9
	b.ne	.LBB0_33
	b	.LBB0_32
.LBB0_32:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-56]
	stur	x8, [x29, #-64]
	stur	x8, [x29, #-72]
	b	.LBB0_37
.LBB0_33:
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	b.ne	.LBB0_35
	b	.LBB0_34
.LBB0_34:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-64]
	stur	x8, [x29, #-72]
	b	.LBB0_36
.LBB0_35:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-72]
	b	.LBB0_36
.LBB0_36:
	b	.LBB0_37
.LBB0_37:
	b	.LBB0_38
.LBB0_38:
	b	.LBB0_39
.LBB0_39:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-56]
	subs	x8, x8, x9
	b.eq	.LBB0_41
	b	.LBB0_40
.LBB0_40:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #160]
	ldur	x1, [x29, #-56]
	ldur	x2, [x29, #-40]
	ldur	w3, [x29, #-44]
	bl	swri_audio_convert
	b	.LBB0_41
.LBB0_41:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #152]
	cbz	x8, .LBB0_47
	b	.LBB0_42
.LBB0_42:
	ldur	x8, [x29, #-56]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	b.eq	.LBB0_44
	b	.LBB0_43
.LBB0_43:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-64]
	ldur	w2, [x29, #-28]
	ldur	x3, [x29, #-56]
	ldur	w4, [x29, #-44]
	bl	resample
	stur	w0, [x29, #-28]
	b	.LBB0_44
.LBB0_44:
	ldur	x8, [x29, #-64]
	ldur	x9, [x29, #-72]
	subs	x8, x8, x9
	b.eq	.LBB0_46
	b	.LBB0_45
.LBB0_45:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-72]
	ldur	x2, [x29, #-64]
	ldur	w3, [x29, #-28]
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	cset	w8, eq
	and	w4, w8, #0x1
	bl	swri_rematrix
	b	.LBB0_46
.LBB0_46:
	b	.LBB0_52
.LBB0_47:
	ldur	x8, [x29, #-56]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	b.eq	.LBB0_49
	b	.LBB0_48
.LBB0_48:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-64]
	ldur	x2, [x29, #-56]
	ldur	w3, [x29, #-44]
	ldur	x8, [x29, #-64]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	cset	w8, eq
	and	w4, w8, #0x1
	bl	swri_rematrix
	b	.LBB0_49
.LBB0_49:
	ldur	x8, [x29, #-64]
	ldur	x9, [x29, #-72]
	subs	x8, x8, x9
	b.eq	.LBB0_51
	b	.LBB0_50
.LBB0_50:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-72]
	ldur	w2, [x29, #-28]
	ldur	x3, [x29, #-64]
	ldur	w4, [x29, #-44]
	bl	resample
	stur	w0, [x29, #-28]
	b	.LBB0_51
.LBB0_51:
	b	.LBB0_52
.LBB0_52:
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.eq	.LBB0_101
	b	.LBB0_53
.LBB0_53:
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB0_101
	b	.LBB0_54
.LBB0_54:
	ldur	x8, [x29, #-72]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #40]
	cbz	x8, .LBB0_100
	b	.LBB0_55
.LBB0_55:
	ldur	w0, [x29, #-28]
	mov	w1, #65536
	bl	FFMAX
	str	w0, [sp, #16]
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	b.ne	.LBB0_59
	b	.LBB0_56
.LBB0_56:
	ldur	x8, [x29, #-16]
	add	x8, x8, #88
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	add	x0, x8, #88
	ldr	w1, [sp, #16]
	bl	swri_realloc_audio
	stur	w0, [x29, #-76]
	subs	w8, w0, #0
	b.ge	.LBB0_58
	b	.LBB0_57
.LBB0_57:
	ldur	w8, [x29, #-76]
	stur	w8, [x29, #-4]
	b	.LBB0_102
.LBB0_58:
	b	.LBB0_59
.LBB0_59:
	ldur	x8, [x29, #-16]
	add	x0, x8, #56
	ldr	w1, [sp, #16]
	bl	swri_realloc_audio
	stur	w0, [x29, #-76]
	subs	w8, w0, #0
	b.ge	.LBB0_61
	b	.LBB0_60
.LBB0_60:
	ldur	w8, [x29, #-76]
	stur	w8, [x29, #-4]
	b	.LBB0_102
.LBB0_61:
	ldur	w8, [x29, #-76]
	cbz	w8, .LBB0_69
	b	.LBB0_62
.LBB0_62:
	str	wzr, [sp, #20]
	b	.LBB0_63
.LBB0_63:                               // =>This Inner Loop Header: Depth=1
	ldrsw	x8, [sp, #20]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #56]
	subs	x8, x8, x9
	b.ge	.LBB0_68
	b	.LBB0_64
.LBB0_64:                               //   in Loop: Header=BB0_63 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #72]
	ldrsw	x9, [sp, #20]
	ldr	x1, [x8, x9, lsl #3]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #64]
	ldrsw	x9, [sp, #20]
	mov	x8, #24619
	movk	x8, #29646, lsl #16
	movk	x8, #2874, lsl #32
	mul	x8, x8, x9
	mov	x9, #61400
	movk	x9, #47, lsl #16
	add	x8, x8, x9
	mov	x10, #45156
	movk	x10, #41477, lsl #16
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x3, x8, x9
	ldur	x8, [x29, #-16]
	ldr	w4, [x8, #80]
	bl	swri_get_dither
	stur	w0, [x29, #-76]
	subs	w8, w0, #0
	b.ge	.LBB0_66
	b	.LBB0_65
.LBB0_65:
	ldur	w8, [x29, #-76]
	stur	w8, [x29, #-4]
	b	.LBB0_102
.LBB0_66:                               //   in Loop: Header=BB0_63 Depth=1
	b	.LBB0_67
.LBB0_67:                               //   in Loop: Header=BB0_63 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_63
.LBB0_68:
	b	.LBB0_69
.LBB0_69:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-72]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	av_assert0
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #48]
	ldur	w9, [x29, #-28]
	add	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #64]
	subs	w8, w8, w9
	b.le	.LBB0_71
	b	.LBB0_70
.LBB0_70:
	ldur	x8, [x29, #-16]
	str	wzr, [x8, #48]
	b	.LBB0_71
.LBB0_71:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #40]
	adrp	x9, SWR_DITHER_NS
	ldr	x9, [x9, :lo12:SWR_DITHER_NS]
	subs	x8, x8, x9
	b.ge	.LBB0_92
	b	.LBB0_72
.LBB0_72:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #144]
	cbz	x8, .LBB0_86
	b	.LBB0_73
.LBB0_73:
	ldur	w8, [x29, #-28]
	and	w8, w8, #0xfffffff0
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	ldur	x9, [x29, #-72]
	ldr	w9, [x9, #12]
	mul	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_79
	b	.LBB0_74
.LBB0_74:
	str	wzr, [sp, #20]
	b	.LBB0_75
.LBB0_75:                               // =>This Inner Loop Header: Depth=1
	ldrsw	x8, [sp, #20]
	ldur	x9, [x29, #-72]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ge	.LBB0_78
	b	.LBB0_76
.LBB0_76:                               //   in Loop: Header=BB0_75 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #144]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #20]
	ldr	x0, [x9, x10, lsl #3]
	ldur	x9, [x29, #-72]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #20]
	ldr	x1, [x9, x10, lsl #3]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #72]
	ldrsw	x10, [sp, #20]
	ldr	x9, [x9, x10, lsl #3]
	ldur	x10, [x29, #-16]
	ldr	w10, [x10, #68]
	ldur	x11, [x29, #-16]
	ldr	w11, [x11, #48]
	mul	w10, w10, w11
	add	x2, x9, w10, sxtw
	ldur	x9, [x29, #-16]
	ldr	w3, [x9, #136]
	ldr	w6, [sp, #12]
	mov	w5, wzr
	mov	w4, w5
	blr	x8
	b	.LBB0_77
.LBB0_77:                               //   in Loop: Header=BB0_75 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_75
.LBB0_78:
	b	.LBB0_79
.LBB0_79:
	ldur	w8, [x29, #-28]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.eq	.LBB0_85
	b	.LBB0_80
.LBB0_80:
	str	wzr, [sp, #20]
	b	.LBB0_81
.LBB0_81:                               // =>This Inner Loop Header: Depth=1
	ldrsw	x8, [sp, #20]
	ldur	x9, [x29, #-72]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ge	.LBB0_84
	b	.LBB0_82
.LBB0_82:                               //   in Loop: Header=BB0_81 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #128]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #20]
	ldr	x9, [x9, x10, lsl #3]
	ldrsw	x10, [sp, #8]
	add	x0, x9, x10
	ldur	x9, [x29, #-72]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #20]
	ldr	x9, [x9, x10, lsl #3]
	ldrsw	x10, [sp, #8]
	add	x1, x9, x10
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #72]
	ldrsw	x10, [sp, #20]
	ldr	x9, [x9, x10, lsl #3]
	ldur	x10, [x29, #-16]
	ldr	w10, [x10, #68]
	ldur	x11, [x29, #-16]
	ldr	w11, [x11, #48]
	mul	w10, w10, w11
	add	x9, x9, w10, sxtw
	ldrsw	x10, [sp, #8]
	add	x2, x9, x10
	ldur	x9, [x29, #-16]
	ldr	w3, [x9, #120]
	ldur	w9, [x29, #-28]
	ldr	w10, [sp, #12]
	subs	w6, w9, w10
	mov	w5, wzr
	mov	w4, w5
	blr	x8
	b	.LBB0_83
.LBB0_83:                               //   in Loop: Header=BB0_81 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_81
.LBB0_84:
	b	.LBB0_85
.LBB0_85:
	b	.LBB0_91
.LBB0_86:
	str	wzr, [sp, #20]
	b	.LBB0_87
.LBB0_87:                               // =>This Inner Loop Header: Depth=1
	ldrsw	x8, [sp, #20]
	ldur	x9, [x29, #-72]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ge	.LBB0_90
	b	.LBB0_88
.LBB0_88:                               //   in Loop: Header=BB0_87 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #128]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #20]
	ldr	x0, [x9, x10, lsl #3]
	ldur	x9, [x29, #-72]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #20]
	ldr	x1, [x9, x10, lsl #3]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #72]
	ldrsw	x10, [sp, #20]
	ldr	x9, [x9, x10, lsl #3]
	ldur	x10, [x29, #-16]
	ldr	w10, [x10, #68]
	ldur	x11, [x29, #-16]
	ldr	w11, [x11, #48]
	mul	w10, w10, w11
	add	x2, x9, w10, sxtw
	ldur	x9, [x29, #-16]
	ldr	w3, [x9, #120]
	ldur	w6, [x29, #-28]
	mov	w5, wzr
	mov	w4, w5
	blr	x8
	b	.LBB0_89
.LBB0_89:                               //   in Loop: Header=BB0_87 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_87
.LBB0_90:
	b	.LBB0_91
.LBB0_91:
	b	.LBB0_99
.LBB0_92:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #3
	b.hi	.LBB0_98
// %bb.93:
	ldr	x11, [sp]                       // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_94:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldur	x2, [x29, #-72]
	ldur	x8, [x29, #-16]
	add	x3, x8, #56
	ldur	w4, [x29, #-28]
	bl	swri_noise_shaping_int16
	b	.LBB0_98
.LBB0_95:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldur	x2, [x29, #-72]
	ldur	x8, [x29, #-16]
	add	x3, x8, #56
	ldur	w4, [x29, #-28]
	bl	swri_noise_shaping_int32
	b	.LBB0_98
.LBB0_96:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldur	x2, [x29, #-72]
	ldur	x8, [x29, #-16]
	add	x3, x8, #56
	ldur	w4, [x29, #-28]
	bl	swri_noise_shaping_float
	b	.LBB0_98
.LBB0_97:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldur	x2, [x29, #-72]
	ldur	x8, [x29, #-16]
	add	x3, x8, #56
	ldur	w4, [x29, #-28]
	bl	swri_noise_shaping_double
	b	.LBB0_98
.LBB0_98:
	b	.LBB0_99
.LBB0_99:
	ldur	w10, [x29, #-28]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #48]
	add	w8, w8, w10
	str	w8, [x9, #48]
	b	.LBB0_100
.LBB0_100:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #24]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #24]
	ldur	w3, [x29, #-28]
	bl	swri_audio_convert
	b	.LBB0_101
.LBB0_101:
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-4]
	b	.LBB0_102
.LBB0_102:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	ret
.Lfunc_end0:
	.size	swr_convert_internal, .Lfunc_end0-swr_convert_internal
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_95-.Ltmp0
	.word	.LBB0_94-.Ltmp0
	.word	.LBB0_96-.Ltmp0
	.word	.LBB0_97-.Ltmp0
                                        // -- End function
	.type	SWR_DITHER_NS,@object           // @SWR_DITHER_NS
	.bss
	.globl	SWR_DITHER_NS
	.p2align	3
SWR_DITHER_NS:
	.xword	0                               // 0x0
	.size	SWR_DITHER_NS, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym swr_convert_internal
	.addrsig_sym av_assert0
	.addrsig_sym swri_audio_convert
	.addrsig_sym swri_realloc_audio
	.addrsig_sym FFMIN
	.addrsig_sym copy
	.addrsig_sym resample
	.addrsig_sym swri_rematrix
	.addrsig_sym FFMAX
	.addrsig_sym swri_get_dither
	.addrsig_sym swri_noise_shaping_int16
	.addrsig_sym swri_noise_shaping_int32
	.addrsig_sym swri_noise_shaping_float
	.addrsig_sym swri_noise_shaping_double
	.addrsig_sym SWR_DITHER_NS