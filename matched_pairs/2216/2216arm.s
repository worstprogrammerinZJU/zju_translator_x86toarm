	.text
	.p2align	2                               // -- Begin function stbi__hdr_load
	.type	stbi__hdr_load,@function
stbi__hdr_load:                         // @stbi__hdr_load
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #224
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	w4, [x29, #-44]
	stur	x5, [x29, #-56]
	adrp	x8, STBI__HDR_BUFLEN
	ldr	w8, [x8, :lo12:STBI__HDR_BUFLEN]
                                        // kill: def $x8 killed $w8
	mov	x9, sp
	stur	x9, [x29, #-64]
	lsr	x9, x8, #0
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x0, x9, x10
	stur	x0, [x29, #-200]                // 8-byte Folded Spill
	mov	sp, x0
	stur	x8, [x29, #-72]
	stur	wzr, [x29, #-84]
	ldur	x0, [x29, #-56]
	bl	STBI_NOTUSED
	ldur	x1, [x29, #-200]                // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	bl	stbi__hdr_gettoken
	stur	x0, [x29, #-152]
	ldur	x0, [x29, #-152]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	cbz	x0, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-152]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	stbi__errpf
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-156]
	b	.LBB0_82
.LBB0_3:
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldur	x1, [x29, #-200]                // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	bl	stbi__hdr_gettoken
	stur	x0, [x29, #-80]
	ldur	x8, [x29, #-80]
	ldrb	w8, [x8]
	cbnz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_9
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	x0, [x29, #-80]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	strcmp
	cbnz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=1
	mov	w8, #1
	stur	w8, [x29, #-84]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_4
.LBB0_9:
	ldur	w8, [x29, #-84]
	cbnz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	stbi__errpf
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-156]
	b	.LBB0_82
.LBB0_11:
	ldur	x1, [x29, #-200]                // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	bl	stbi__hdr_gettoken
	stur	x0, [x29, #-80]
	ldur	x0, [x29, #-80]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	mov	w2, #3
	bl	strncmp
	cbz	x0, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	stbi__errpf
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-156]
	b	.LBB0_82
.LBB0_13:
	sub	x1, x29, #80
	ldur	x8, [x29, #-80]
	add	x8, x8, #3
	stur	x8, [x29, #-80]
	ldur	x0, [x29, #-80]
	mov	w2, #10
	bl	strtol
	mov	w8, w0
	stur	w8, [x29, #-92]
	b	.LBB0_14
.LBB0_14:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-80]
	ldrb	w8, [x8]
	subs	w8, w8, #32
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_14 Depth=1
	ldur	x8, [x29, #-80]
	add	x8, x8, #1
	stur	x8, [x29, #-80]
	b	.LBB0_14
.LBB0_16:
	ldur	x0, [x29, #-80]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	mov	w2, #3
	bl	strncmp
	cbz	x0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	stbi__errpf
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-156]
	b	.LBB0_82
.LBB0_18:
	ldur	x8, [x29, #-80]
	add	x8, x8, #3
	stur	x8, [x29, #-80]
	ldur	x0, [x29, #-80]
	mov	x1, xzr
	mov	w2, #10
	bl	strtol
	mov	w8, w0
	stur	w8, [x29, #-88]
	ldur	w8, [x29, #-88]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	ldur	w8, [x29, #-92]
	ldur	x9, [x29, #-32]
	str	w8, [x9]
	ldur	x8, [x29, #-40]
	cbz	x8, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldur	x9, [x29, #-40]
	mov	w8, #3
	str	w8, [x9]
	b	.LBB0_20
.LBB0_20:
	ldur	w8, [x29, #-44]
	cbnz	w8, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	mov	w8, #3
	stur	w8, [x29, #-44]
	b	.LBB0_22
.LBB0_22:
	ldur	w0, [x29, #-88]
	ldur	w1, [x29, #-92]
	ldur	w2, [x29, #-44]
	mov	w3, #4
	mov	w4, wzr
	bl	stbi__mad4sizes_valid
	cbnz	w0, .LBB0_24
	b	.LBB0_23
.LBB0_23:
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	stbi__errpf
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-156]
	b	.LBB0_82
.LBB0_24:
	ldur	w0, [x29, #-88]
	ldur	w1, [x29, #-92]
	ldur	w2, [x29, #-44]
	mov	w3, #4
	mov	w4, wzr
	bl	stbi__malloc_mad4
	stur	x0, [x29, #-112]
	ldur	x8, [x29, #-112]
	cbnz	x8, .LBB0_26
	b	.LBB0_25
.LBB0_25:
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	bl	stbi__errpf
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-156]
	b	.LBB0_82
.LBB0_26:
	ldur	w8, [x29, #-88]
	subs	w8, w8, #8
	b.lt	.LBB0_28
	b	.LBB0_27
.LBB0_27:
	ldur	w8, [x29, #-88]
	subs	w8, w8, #8, lsl #12             // =32768
	b.lt	.LBB0_38
	b	.LBB0_28
.LBB0_28:
	stur	wzr, [x29, #-128]
	b	.LBB0_29
.LBB0_29:
	ldur	w8, [x29, #-128]
	ldur	w9, [x29, #-92]
	subs	w8, w8, w9
	b.ge	.LBB0_37
	b	.LBB0_30
.LBB0_30:
	stur	wzr, [x29, #-124]
	b	.LBB0_31
.LBB0_31:
	ldur	w8, [x29, #-124]
	ldur	w9, [x29, #-88]
	subs	w8, w8, w9
	b.ge	.LBB0_35
	b	.LBB0_32
.LBB0_32:
	b	.LBB0_33
.LBB0_33:
	ldur	x0, [x29, #-16]
	sub	x1, x29, #172
	stur	x1, [x29, #-208]                // 8-byte Folded Spill
	mov	w2, #4
	bl	stbi__getn
	ldur	x1, [x29, #-208]                // 8-byte Folded Reload
	ldur	x8, [x29, #-112]
	ldur	w9, [x29, #-128]
	ldur	w10, [x29, #-88]
	mul	w9, w9, w10
	ldur	w10, [x29, #-44]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldur	w9, [x29, #-124]
	ldur	w10, [x29, #-44]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw #2
	ldur	w2, [x29, #-44]
	bl	stbi__hdr_convert
	b	.LBB0_34
.LBB0_34:
	ldur	w8, [x29, #-124]
	add	w8, w8, #1
	stur	w8, [x29, #-124]
	b	.LBB0_31
.LBB0_35:
	b	.LBB0_36
.LBB0_36:
	ldur	w8, [x29, #-128]
	add	w8, w8, #1
	stur	w8, [x29, #-128]
	b	.LBB0_29
.LBB0_37:
	b	.LBB0_81
.LBB0_38:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-104]
	stur	wzr, [x29, #-128]
	b	.LBB0_39
.LBB0_39:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_51 Depth 2
                                        //       Child Loop BB0_53 Depth 3
                                        //         Child Loop BB0_65 Depth 4
                                        //         Child Loop BB0_58 Depth 4
                                        //     Child Loop BB0_73 Depth 2
	ldur	w8, [x29, #-128]
	ldur	w9, [x29, #-92]
	subs	w8, w8, w9
	b.ge	.LBB0_78
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_39 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	stur	w0, [x29, #-136]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	stur	w0, [x29, #-140]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	stur	w0, [x29, #-116]
	ldur	w8, [x29, #-136]
	subs	w8, w8, #2
	b.ne	.LBB0_43
	b	.LBB0_41
.LBB0_41:                               //   in Loop: Header=BB0_39 Depth=1
	ldur	w8, [x29, #-140]
	subs	w8, w8, #2
	b.ne	.LBB0_43
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_39 Depth=1
	ldur	w8, [x29, #-116]
	tbz	w8, #7, .LBB0_44
	b	.LBB0_43
.LBB0_43:
	ldur	s0, [x29, #-136]
	scvtf	s0, s0
	sub	x8, x29, #188
	stur	x8, [x29, #-216]                // 8-byte Folded Spill
	stur	s0, [x29, #-188]
	ldur	s0, [x29, #-140]
	scvtf	s0, s0
	stur	s0, [x29, #-184]
	ldur	s0, [x29, #-116]
	scvtf	s0, s0
	stur	s0, [x29, #-180]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	ldur	x1, [x29, #-216]                // 8-byte Folded Reload
	scvtf	s0, w0
	stur	s0, [x29, #-176]
	ldur	x0, [x29, #-112]
	ldur	w2, [x29, #-44]
	bl	stbi__hdr_convert
	mov	w8, #1
	stur	w8, [x29, #-124]
	stur	wzr, [x29, #-128]
	ldur	x0, [x29, #-104]
	bl	STBI_FREE
	b	.LBB0_33
.LBB0_44:                               //   in Loop: Header=BB0_39 Depth=1
	ldur	w8, [x29, #-116]
	lsl	w8, w8, #8
	stur	w8, [x29, #-116]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	ldur	w8, [x29, #-116]
	orr	w8, w8, w0
	stur	w8, [x29, #-116]
	ldur	w8, [x29, #-116]
	ldur	w9, [x29, #-88]
	subs	w8, w8, w9
	b.eq	.LBB0_46
	b	.LBB0_45
.LBB0_45:
	ldur	x0, [x29, #-112]
	bl	STBI_FREE
	ldur	x0, [x29, #-104]
	bl	STBI_FREE
	adrp	x0, .L.str.14
	add	x0, x0, :lo12:.L.str.14
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	bl	stbi__errpf
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-156]
	b	.LBB0_82
.LBB0_46:                               //   in Loop: Header=BB0_39 Depth=1
	ldur	x8, [x29, #-104]
	cbnz	x8, .LBB0_50
	b	.LBB0_47
.LBB0_47:                               //   in Loop: Header=BB0_39 Depth=1
	ldur	w0, [x29, #-88]
	mov	w1, #4
	mov	w2, wzr
	bl	stbi__malloc_mad2
	stur	x0, [x29, #-104]
	ldur	x8, [x29, #-104]
	cbnz	x8, .LBB0_49
	b	.LBB0_48
.LBB0_48:
	ldur	x0, [x29, #-112]
	bl	STBI_FREE
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	bl	stbi__errpf
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-156]
	b	.LBB0_82
.LBB0_49:                               //   in Loop: Header=BB0_39 Depth=1
	b	.LBB0_50
.LBB0_50:                               //   in Loop: Header=BB0_39 Depth=1
	stur	wzr, [x29, #-132]
	b	.LBB0_51
.LBB0_51:                               //   Parent Loop BB0_39 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_53 Depth 3
                                        //         Child Loop BB0_65 Depth 4
                                        //         Child Loop BB0_58 Depth 4
	ldur	w8, [x29, #-132]
	subs	w8, w8, #4
	b.ge	.LBB0_72
	b	.LBB0_52
.LBB0_52:                               //   in Loop: Header=BB0_51 Depth=2
	stur	wzr, [x29, #-124]
	b	.LBB0_53
.LBB0_53:                               //   Parent Loop BB0_39 Depth=1
                                        //     Parent Loop BB0_51 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_65 Depth 4
                                        //         Child Loop BB0_58 Depth 4
	ldur	w8, [x29, #-88]
	ldur	w9, [x29, #-124]
	subs	w8, w8, w9
	stur	w8, [x29, #-192]
	subs	w8, w8, #0
	b.le	.LBB0_70
	b	.LBB0_54
.LBB0_54:                               //   in Loop: Header=BB0_53 Depth=3
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	sturb	w0, [x29, #-117]
	ldurb	w8, [x29, #-117]
	subs	w8, w8, #128
	b.le	.LBB0_62
	b	.LBB0_55
.LBB0_55:                               //   in Loop: Header=BB0_53 Depth=3
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	sturb	w0, [x29, #-118]
	ldurb	w8, [x29, #-117]
	subs	w8, w8, #128
	sturb	w8, [x29, #-117]
	ldurb	w8, [x29, #-117]
	ldur	w9, [x29, #-192]
	subs	w8, w8, w9
	b.le	.LBB0_57
	b	.LBB0_56
.LBB0_56:
	ldur	x0, [x29, #-112]
	bl	STBI_FREE
	ldur	x0, [x29, #-104]
	bl	STBI_FREE
	adrp	x0, .L.str.16
	add	x0, x0, :lo12:.L.str.16
	adrp	x1, .L.str.17
	add	x1, x1, :lo12:.L.str.17
	bl	stbi__errpf
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-156]
	b	.LBB0_82
.LBB0_57:                               //   in Loop: Header=BB0_53 Depth=3
	stur	wzr, [x29, #-144]
	b	.LBB0_58
.LBB0_58:                               //   Parent Loop BB0_39 Depth=1
                                        //     Parent Loop BB0_51 Depth=2
                                        //       Parent Loop BB0_53 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldur	w8, [x29, #-144]
	ldurb	w9, [x29, #-117]
	subs	w8, w8, w9
	b.ge	.LBB0_61
	b	.LBB0_59
.LBB0_59:                               //   in Loop: Header=BB0_58 Depth=4
	ldurb	w8, [x29, #-118]
	ucvtf	s0, w8
	ldur	x8, [x29, #-104]
	ldur	w10, [x29, #-124]
	add	w9, w10, #1
	stur	w9, [x29, #-124]
	ldur	w9, [x29, #-132]
	add	w9, w9, w10, lsl #2
	str	s0, [x8, w9, sxtw #2]
	b	.LBB0_60
.LBB0_60:                               //   in Loop: Header=BB0_58 Depth=4
	ldur	w8, [x29, #-144]
	add	w8, w8, #1
	stur	w8, [x29, #-144]
	b	.LBB0_58
.LBB0_61:                               //   in Loop: Header=BB0_53 Depth=3
	b	.LBB0_69
.LBB0_62:                               //   in Loop: Header=BB0_53 Depth=3
	ldurb	w8, [x29, #-117]
	ldur	w9, [x29, #-192]
	subs	w8, w8, w9
	b.le	.LBB0_64
	b	.LBB0_63
.LBB0_63:
	ldur	x0, [x29, #-112]
	bl	STBI_FREE
	ldur	x0, [x29, #-104]
	bl	STBI_FREE
	adrp	x0, .L.str.16
	add	x0, x0, :lo12:.L.str.16
	adrp	x1, .L.str.17
	add	x1, x1, :lo12:.L.str.17
	bl	stbi__errpf
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-156]
	b	.LBB0_82
.LBB0_64:                               //   in Loop: Header=BB0_53 Depth=3
	stur	wzr, [x29, #-144]
	b	.LBB0_65
.LBB0_65:                               //   Parent Loop BB0_39 Depth=1
                                        //     Parent Loop BB0_51 Depth=2
                                        //       Parent Loop BB0_53 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldur	w8, [x29, #-144]
	ldurb	w9, [x29, #-117]
	subs	w8, w8, w9
	b.ge	.LBB0_68
	b	.LBB0_66
.LBB0_66:                               //   in Loop: Header=BB0_65 Depth=4
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	scvtf	s0, w0
	ldur	x8, [x29, #-104]
	ldur	w10, [x29, #-124]
	add	w9, w10, #1
	stur	w9, [x29, #-124]
	ldur	w9, [x29, #-132]
	add	w9, w9, w10, lsl #2
	str	s0, [x8, w9, sxtw #2]
	b	.LBB0_67
.LBB0_67:                               //   in Loop: Header=BB0_65 Depth=4
	ldur	w8, [x29, #-144]
	add	w8, w8, #1
	stur	w8, [x29, #-144]
	b	.LBB0_65
.LBB0_68:                               //   in Loop: Header=BB0_53 Depth=3
	b	.LBB0_69
.LBB0_69:                               //   in Loop: Header=BB0_53 Depth=3
	b	.LBB0_53
.LBB0_70:                               //   in Loop: Header=BB0_51 Depth=2
	b	.LBB0_71
.LBB0_71:                               //   in Loop: Header=BB0_51 Depth=2
	ldur	w8, [x29, #-132]
	add	w8, w8, #1
	stur	w8, [x29, #-132]
	b	.LBB0_51
.LBB0_72:                               //   in Loop: Header=BB0_39 Depth=1
	stur	wzr, [x29, #-124]
	b	.LBB0_73
.LBB0_73:                               //   Parent Loop BB0_39 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-124]
	ldur	w9, [x29, #-88]
	subs	w8, w8, w9
	b.ge	.LBB0_76
	b	.LBB0_74
.LBB0_74:                               //   in Loop: Header=BB0_73 Depth=2
	ldur	x8, [x29, #-112]
	ldur	w9, [x29, #-128]
	ldur	w10, [x29, #-88]
	mul	w9, w9, w10
	ldur	w10, [x29, #-124]
	add	w9, w9, w10
	ldur	w10, [x29, #-44]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw #2
	ldur	x8, [x29, #-104]
	ldur	w9, [x29, #-124]
	lsl	w9, w9, #2
	add	x1, x8, w9, sxtw #2
	ldur	w2, [x29, #-44]
	bl	stbi__hdr_convert
	b	.LBB0_75
.LBB0_75:                               //   in Loop: Header=BB0_73 Depth=2
	ldur	w8, [x29, #-124]
	add	w8, w8, #1
	stur	w8, [x29, #-124]
	b	.LBB0_73
.LBB0_76:                               //   in Loop: Header=BB0_39 Depth=1
	b	.LBB0_77
.LBB0_77:                               //   in Loop: Header=BB0_39 Depth=1
	ldur	w8, [x29, #-128]
	add	w8, w8, #1
	stur	w8, [x29, #-128]
	b	.LBB0_39
.LBB0_78:
	ldur	x8, [x29, #-104]
	cbz	x8, .LBB0_80
	b	.LBB0_79
.LBB0_79:
	ldur	x0, [x29, #-104]
	bl	STBI_FREE
	b	.LBB0_80
.LBB0_80:
	b	.LBB0_81
.LBB0_81:
	ldur	x8, [x29, #-112]
	stur	x8, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-156]
	b	.LBB0_82
.LBB0_82:
	ldur	x8, [x29, #-64]
	mov	sp, x8
	ldur	x0, [x29, #-8]
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	stbi__hdr_load, .Lfunc_end0-stbi__hdr_load
                                        // -- End function
	.type	STBI__HDR_BUFLEN,@object        // @STBI__HDR_BUFLEN
	.bss
	.globl	STBI__HDR_BUFLEN
	.p2align	2
STBI__HDR_BUFLEN:
	.word	0                               // 0x0
	.size	STBI__HDR_BUFLEN, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"#?RADIANCE"
	.size	.L.str, 11
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"#?RGBE"
	.size	.L.str.1, 7
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"not HDR"
	.size	.L.str.2, 8
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"Corrupt HDR image"
	.size	.L.str.3, 18
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"FORMAT=32-bit_rle_rgbe"
	.size	.L.str.4, 23
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"unsupported format"
	.size	.L.str.5, 19
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"Unsupported HDR format"
	.size	.L.str.6, 23
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"-Y "
	.size	.L.str.7, 4
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"unsupported data layout"
	.size	.L.str.8, 24
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"+X "
	.size	.L.str.9, 4
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"too large"
	.size	.L.str.10, 10
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"HDR image is too large"
	.size	.L.str.11, 23
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"outofmem"
	.size	.L.str.12, 9
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"Out of memory"
	.size	.L.str.13, 14
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"invalid decoded scanline length"
	.size	.L.str.14, 32
	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"corrupt HDR"
	.size	.L.str.15, 12
	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"corrupt"
	.size	.L.str.16, 8
	.type	.L.str.17,@object               // @.str.17
.L.str.17:
	.asciz	"bad RLE data in HDR"
	.size	.L.str.17, 20
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__hdr_load
	.addrsig_sym STBI_NOTUSED
	.addrsig_sym stbi__hdr_gettoken
	.addrsig_sym strcmp
	.addrsig_sym stbi__errpf
	.addrsig_sym strncmp
	.addrsig_sym strtol
	.addrsig_sym stbi__mad4sizes_valid
	.addrsig_sym stbi__malloc_mad4
	.addrsig_sym stbi__getn
	.addrsig_sym stbi__hdr_convert
	.addrsig_sym stbi__get8
	.addrsig_sym STBI_FREE
	.addrsig_sym stbi__malloc_mad2
	.addrsig_sym STBI__HDR_BUFLEN