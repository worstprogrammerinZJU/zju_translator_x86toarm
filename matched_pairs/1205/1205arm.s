	.text
	.p2align	2                               // -- Begin function run_jq_tests
	.type	run_jq_tests,@function
run_jq_tests:                           // @run_jq_tests
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #2, lsl #12             // =8192
	sub	sp, sp, #224
	sub	x8, x29, #16
	str	x8, [sp, #104]                  // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	str	x2, [x8]
	stur	w3, [x29, #-20]
	stur	w4, [x29, #-24]
	str	wzr, [sp, #188]
	str	wzr, [sp, #184]
	str	wzr, [sp, #180]
	str	wzr, [sp, #176]
	str	wzr, [sp, #172]
	str	wzr, [sp, #168]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #160]
	ldur	w8, [x29, #-20]
	subs	w8, w8, #0
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-20]
	str	w8, [sp, #100]                  // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	mov	w8, wzr
	str	w8, [sp, #100]                  // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #100]                  // 4-byte Folded Reload
	str	w8, [sp, #156]
	ldur	w8, [x29, #-24]
	str	w8, [sp, #152]
	bl	jq_init
	str	x0, [sp, #160]
	ldr	x0, [sp, #160]
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	bl	jv_array
	stur	w0, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #160]
	str	x8, [sp, #88]                   // 8-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	mov	w1, w0
	ldr	x0, [sp, #88]                   // 8-byte Folded Reload
	ldur	w2, [x29, #-4]
	bl	jq_set_attr
	b	.LBB0_6
.LBB0_6:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_45 Depth 2
                                        //     Child Loop BB0_62 Depth 2
                                        //     Child Loop BB0_16 Depth 2
	ldr	x8, [sp, #104]                  // 8-byte Folded Reload
	ldr	x2, [x8]
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #200
	mov	w1, #4096
	bl	fgets
	cbnz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_79
.LBB0_8:                                //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #176]
	add	w8, w8, #1
	str	w8, [sp, #176]
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #200
	bl	skipline
	cbz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_6
.LBB0_10:                               //   in Loop: Header=BB0_6 Depth=1
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #200
	bl	checkfail
	cbz	x0, .LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_6 Depth=1
	mov	w8, #1
	str	w8, [sp, #172]
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #200
	bl	checkerrormsg
	str	w0, [sp, #168]
	ldr	x0, [sp, #160]
	adrp	x8, test_err_cb
	ldr	x1, [x8, :lo12:test_err_cb]
	add	x2, sp, #192
	bl	jq_set_error_cb
	b	.LBB0_6
.LBB0_12:                               //   in Loop: Header=BB0_6 Depth=1
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #200
	str	x0, [sp, #80]                   // 8-byte Folded Spill
	bl	strlen
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	subs	w9, w0, #1
	ldrb	w8, [x8, w9, sxtw]
	subs	w8, w8, #10
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_6 Depth=1
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #200
	str	x0, [sp, #72]                   // 8-byte Folded Spill
	bl	strlen
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	subs	w9, w0, #1
	add	x8, x8, w9, sxtw
	strb	wzr, [x8]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_6 Depth=1
	ldur	w8, [x29, #-20]
	subs	w8, w8, #0
	b.le	.LBB0_23
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_6 Depth=1
	ldur	w8, [x29, #-20]
	subs	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_16
.LBB0_16:                               //   Parent Loop BB0_6 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #104]                  // 8-byte Folded Reload
	ldr	x2, [x8]
	add	x0, sp, #200
	mov	w1, #4096
	bl	fgets
	cbz	x0, .LBB0_22
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_16 Depth=2
	ldr	w8, [sp, #176]
	add	w8, w8, #1
	str	w8, [sp, #176]
	ldrb	w8, [sp, #200]
	subs	w8, w8, #10
	b.eq	.LBB0_20
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_16 Depth=2
	ldrb	w8, [sp, #200]
	subs	w8, w8, #13
	b.ne	.LBB0_21
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_16 Depth=2
	ldrb	w8, [sp, #201]
	subs	w8, w8, #10
	b.ne	.LBB0_21
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_22
.LBB0_21:                               //   in Loop: Header=BB0_16 Depth=2
	b	.LBB0_16
.LBB0_22:                               //   in Loop: Header=BB0_6 Depth=1
	str	wzr, [sp, #172]
	str	wzr, [sp, #168]
	b	.LBB0_6
.LBB0_23:                               //   in Loop: Header=BB0_6 Depth=1
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB0_25
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w1, [sp, #156]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	mov	w8, #-1
	stur	w8, [x29, #-20]
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_6 Depth=1
	ldur	w8, [x29, #-24]
	subs	w8, w8, #0
	b.le	.LBB0_28
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_6 Depth=1
	ldur	w8, [x29, #-24]
	subs	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_31
.LBB0_28:                               //   in Loop: Header=BB0_6 Depth=1
	ldur	w8, [x29, #-24]
	cbnz	w8, .LBB0_30
	b	.LBB0_29
.LBB0_29:
	ldr	w1, [sp, #152]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	mov	w8, #-1
	stur	w8, [x29, #-24]
	b	.LBB0_79
.LBB0_30:                               //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_6 Depth=1
	mov	w8, #1
	str	w8, [sp, #148]
	ldr	w8, [sp, #188]
	add	w8, w8, #1
	str	w8, [sp, #188]
	ldr	w8, [sp, #188]
	ldr	w9, [sp, #156]
	add	w1, w8, w9
	ldr	w3, [sp, #176]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	add	x2, sp, #1, lsl #12             // =4096
	add	x2, x2, #200
	str	x2, [sp, #64]                   // 8-byte Folded Spill
	bl	printf
	ldr	x1, [sp, #64]                   // 8-byte Folded Reload
	ldr	x0, [sp, #160]
	bl	jq_compile
	str	w0, [sp, #144]
	ldr	w8, [sp, #172]
	cbz	w8, .LBB0_43
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	x0, [sp, #160]
	mov	x2, xzr
	mov	x1, x2
	bl	jq_set_error_cb
	ldr	x8, [sp, #104]                  // 8-byte Folded Reload
	ldr	x2, [x8]
	add	x0, sp, #200
	mov	w1, #4096
	bl	fgets
	cbnz	x0, .LBB0_34
	b	.LBB0_33
.LBB0_33:
	ldr	w8, [sp, #180]
	add	w8, w8, #1
	str	w8, [sp, #180]
	b	.LBB0_79
.LBB0_34:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #176]
	add	w8, w8, #1
	str	w8, [sp, #176]
	add	x0, sp, #200
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	bl	strlen
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	subs	w9, w0, #1
	ldrb	w8, [x8, w9, sxtw]
	subs	w8, w8, #10
	b.ne	.LBB0_36
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_6 Depth=1
	add	x0, sp, #200
	str	x0, [sp, #48]                   // 8-byte Folded Spill
	bl	strlen
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	subs	w9, w0, #1
	add	x8, x8, w9, sxtw
	strb	wzr, [x8]
	b	.LBB0_36
.LBB0_36:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #144]
	cbz	w8, .LBB0_38
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w1, [sp, #176]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	add	x2, sp, #1, lsl #12             // =4096
	add	x2, x2, #200
	bl	printf
	str	wzr, [sp, #172]
	str	wzr, [sp, #168]
	ldr	w8, [sp, #180]
	add	w8, w8, #1
	str	w8, [sp, #180]
	b	.LBB0_6
.LBB0_38:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #168]
	cbz	w8, .LBB0_41
	b	.LBB0_39
.LBB0_39:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	x1, [sp, #192]
	add	x0, sp, #200
	bl	strcmp
	cbz	x0, .LBB0_41
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	x1, [sp, #192]
	ldr	w2, [sp, #176]
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	add	x3, sp, #1, lsl #12             // =4096
	add	x3, x3, #200
	bl	printf
	ldr	w8, [sp, #180]
	add	w8, w8, #1
	str	w8, [sp, #180]
	b	.LBB0_42
.LBB0_41:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #184]
	add	w8, w8, #1
	str	w8, [sp, #184]
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_6 Depth=1
	str	wzr, [sp, #172]
	str	wzr, [sp, #168]
	b	.LBB0_6
.LBB0_43:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #144]
	cbnz	w8, .LBB0_52
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w1, [sp, #176]
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	add	x2, sp, #1, lsl #12             // =4096
	add	x2, x2, #200
	bl	printf
	ldr	w8, [sp, #180]
	add	w8, w8, #1
	str	w8, [sp, #180]
	b	.LBB0_45
.LBB0_45:                               //   Parent Loop BB0_6 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #104]                  // 8-byte Folded Reload
	ldr	x2, [x8]
	add	x0, sp, #200
	mov	w1, #4096
	bl	fgets
	cbz	x0, .LBB0_51
	b	.LBB0_46
.LBB0_46:                               //   in Loop: Header=BB0_45 Depth=2
	ldr	w8, [sp, #176]
	add	w8, w8, #1
	str	w8, [sp, #176]
	ldrb	w8, [sp, #200]
	subs	w8, w8, #10
	b.eq	.LBB0_49
	b	.LBB0_47
.LBB0_47:                               //   in Loop: Header=BB0_45 Depth=2
	ldrb	w8, [sp, #200]
	subs	w8, w8, #13
	b.ne	.LBB0_50
	b	.LBB0_48
.LBB0_48:                               //   in Loop: Header=BB0_45 Depth=2
	ldrb	w8, [sp, #201]
	subs	w8, w8, #10
	b.ne	.LBB0_50
	b	.LBB0_49
.LBB0_49:                               //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_51
.LBB0_50:                               //   in Loop: Header=BB0_45 Depth=2
	b	.LBB0_45
.LBB0_51:                               //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_6
.LBB0_52:                               //   in Loop: Header=BB0_6 Depth=1
	ldur	w8, [x29, #-8]
	cbz	w8, .LBB0_54
	b	.LBB0_53
.LBB0_53:                               //   in Loop: Header=BB0_6 Depth=1
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	printf
	ldr	x0, [sp, #160]
	mov	w1, #2
	bl	jq_dump_disassembly
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	printf
	b	.LBB0_54
.LBB0_54:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	x8, [sp, #104]                  // 8-byte Folded Reload
	ldr	x2, [x8]
	add	x0, sp, #200
	mov	w1, #4096
	bl	fgets
	cbnz	x0, .LBB0_56
	b	.LBB0_55
.LBB0_55:
	ldr	w8, [sp, #180]
	add	w8, w8, #1
	str	w8, [sp, #180]
	b	.LBB0_79
.LBB0_56:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #176]
	add	w8, w8, #1
	str	w8, [sp, #176]
	add	x0, sp, #200
	bl	jv_parse
	str	w0, [sp, #140]
	ldr	w0, [sp, #140]
	bl	jv_is_valid
	cbnz	x0, .LBB0_58
	b	.LBB0_57
.LBB0_57:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w1, [sp, #176]
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	add	x2, sp, #200
	bl	printf
	ldr	w8, [sp, #180]
	add	w8, w8, #1
	str	w8, [sp, #180]
	b	.LBB0_6
.LBB0_58:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	x8, [sp, #160]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	ldr	w8, [sp, #140]
	str	w8, [sp, #44]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-8]
	cbz	w8, .LBB0_60
	b	.LBB0_59
.LBB0_59:                               //   in Loop: Header=BB0_6 Depth=1
	adrp	x8, JQ_DEBUG_TRACE
	ldr	w8, [x8, :lo12:JQ_DEBUG_TRACE]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	b	.LBB0_61
.LBB0_60:                               //   in Loop: Header=BB0_6 Depth=1
	mov	w8, wzr
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	b	.LBB0_61
.LBB0_61:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w1, [sp, #44]                   // 4-byte Folded Reload
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	bl	jq_start
	b	.LBB0_62
.LBB0_62:                               //   Parent Loop BB0_6 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #104]                  // 8-byte Folded Reload
	ldr	x2, [x8]
	add	x0, sp, #200
	mov	w1, #4096
	bl	fgets
	cbz	x0, .LBB0_73
	b	.LBB0_63
.LBB0_63:                               //   in Loop: Header=BB0_62 Depth=2
	ldr	w8, [sp, #176]
	add	w8, w8, #1
	str	w8, [sp, #176]
	add	x0, sp, #200
	bl	skipline
	cbz	x0, .LBB0_65
	b	.LBB0_64
.LBB0_64:                               //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_73
.LBB0_65:                               //   in Loop: Header=BB0_62 Depth=2
	add	x0, sp, #200
	bl	jv_parse
	str	w0, [sp, #136]
	ldr	w0, [sp, #136]
	bl	jv_is_valid
	cbnz	x0, .LBB0_67
	b	.LBB0_66
.LBB0_66:                               //   in Loop: Header=BB0_62 Depth=2
	ldr	w1, [sp, #176]
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	add	x2, sp, #200
	bl	printf
	ldr	w8, [sp, #180]
	add	w8, w8, #1
	str	w8, [sp, #180]
	b	.LBB0_62
.LBB0_67:                               //   in Loop: Header=BB0_62 Depth=2
	ldr	x0, [sp, #160]
	bl	jq_next
	str	w0, [sp, #132]
	ldr	w0, [sp, #132]
	bl	jv_is_valid
	cbnz	x0, .LBB0_69
	b	.LBB0_68
.LBB0_68:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w0, [sp, #132]
	bl	jv_free
	ldr	w1, [sp, #176]
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	add	x2, sp, #1, lsl #12             // =4096
	add	x2, x2, #200
	bl	printf
	str	wzr, [sp, #148]
	b	.LBB0_73
.LBB0_69:                               //   in Loop: Header=BB0_62 Depth=2
	ldr	w0, [sp, #136]
	bl	jv_copy
	str	w0, [sp, #24]                   // 4-byte Folded Spill
	ldr	w0, [sp, #132]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp, #24]                   // 4-byte Folded Reload
	bl	jv_equal
	cbnz	x0, .LBB0_71
	b	.LBB0_70
.LBB0_70:                               //   in Loop: Header=BB0_62 Depth=2
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	bl	printf
	ldr	w0, [sp, #136]
	bl	jv_copy
	mov	w1, wzr
	str	w1, [sp, #20]                   // 4-byte Folded Spill
	bl	jv_dump
	adrp	x0, .L.str.13
	add	x0, x0, :lo12:.L.str.13
	bl	printf
	ldr	w0, [sp, #132]
	bl	jv_copy
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	bl	jv_dump
	ldr	w1, [sp, #176]
	adrp	x0, .L.str.14
	add	x0, x0, :lo12:.L.str.14
	add	x2, sp, #1, lsl #12             // =4096
	add	x2, x2, #200
	bl	printf
	str	wzr, [sp, #148]
	b	.LBB0_71
.LBB0_71:                               //   in Loop: Header=BB0_62 Depth=2
	b	.LBB0_72
.LBB0_72:                               //   in Loop: Header=BB0_62 Depth=2
	ldr	w0, [sp, #136]
	bl	jv_copy
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	bl	rand
	mov	w8, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	adrp	x9, JV_PRINT_COLOR
	ldr	w9, [x9, :lo12:JV_PRINT_COLOR]
	adrp	x10, JV_PRINT_REFCOUNT
	ldr	w10, [x10, :lo12:JV_PRINT_REFCOUNT]
	orr	w9, w9, w10
	bic	w1, w8, w9
	bl	jv_dump_string
	str	w0, [sp, #128]
	ldr	w0, [sp, #128]
	bl	jv_string_value
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldr	w0, [sp, #128]
	bl	jv_copy
	bl	jv_string_length_bytes
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	jv_parse_sized
	str	w0, [sp, #124]
	ldr	w0, [sp, #136]
	bl	jv_copy
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	ldr	w0, [sp, #124]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	bl	jv_equal
	bl	assert
	ldr	w0, [sp, #128]
	bl	jv_free
	ldr	w0, [sp, #124]
	bl	jv_free
	ldr	w0, [sp, #136]
	bl	jv_free
	ldr	w0, [sp, #132]
	bl	jv_free
	b	.LBB0_62
.LBB0_73:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #148]
	cbz	w8, .LBB0_78
	b	.LBB0_74
.LBB0_74:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	x0, [sp, #160]
	bl	jq_next
	str	w0, [sp, #120]
	ldr	w0, [sp, #120]
	bl	jv_is_valid
	cbz	x0, .LBB0_76
	b	.LBB0_75
.LBB0_75:                               //   in Loop: Header=BB0_6 Depth=1
	adrp	x0, .L.str.15
	add	x0, x0, :lo12:.L.str.15
	bl	printf
	ldr	w0, [sp, #120]
	mov	w1, wzr
	bl	jv_dump
	ldr	w1, [sp, #176]
	adrp	x0, .L.str.16
	add	x0, x0, :lo12:.L.str.16
	add	x2, sp, #1, lsl #12             // =4096
	add	x2, x2, #200
	bl	printf
	str	wzr, [sp, #148]
	b	.LBB0_77
.LBB0_76:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w0, [sp, #120]
	bl	jv_free
	b	.LBB0_77
.LBB0_77:                               //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_78
.LBB0_78:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w9, [sp, #148]
	ldr	w8, [sp, #184]
	add	w8, w8, w9
	str	w8, [sp, #184]
	b	.LBB0_6
.LBB0_79:
	add	x0, sp, #160
	bl	jq_teardown
	ldr	w8, [sp, #156]
	str	w8, [sp, #116]
	ldur	w8, [x29, #-20]
	subs	w8, w8, #0
	b.le	.LBB0_81
	b	.LBB0_80
.LBB0_80:
	ldr	w8, [sp, #156]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	str	w8, [sp, #116]
	b	.LBB0_81
.LBB0_81:
	ldr	w1, [sp, #184]
	ldr	w2, [sp, #188]
	ldr	w3, [sp, #180]
	ldr	w4, [sp, #116]
	adrp	x0, .L.str.17
	add	x0, x0, :lo12:.L.str.17
	bl	printf
	ldur	w8, [x29, #-20]
	subs	w8, w8, #0
	b.le	.LBB0_83
	b	.LBB0_82
.LBB0_82:
	adrp	x0, .L.str.18
	add	x0, x0, :lo12:.L.str.18
	bl	printf
	mov	w0, #2
	bl	exit
	b	.LBB0_83
.LBB0_83:
	ldr	w8, [sp, #184]
	ldr	w9, [sp, #188]
	subs	w8, w8, w9
	b.eq	.LBB0_85
	b	.LBB0_84
.LBB0_84:
	mov	w0, #1
	bl	exit
	b	.LBB0_85
.LBB0_85:
	add	sp, sp, #2, lsl #12             // =8192
	add	sp, sp, #224
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	run_jq_tests, .Lfunc_end0-run_jq_tests
                                        // -- End function
	.type	JV_KIND_NULL,@object            // @JV_KIND_NULL
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.xword	0                               // 0x0
	.size	JV_KIND_NULL, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"JQ_LIBRARY_PATH"
	.size	.L.str, 16
	.type	test_err_cb,@object             // @test_err_cb
	.bss
	.globl	test_err_cb
	.p2align	3
test_err_cb:
	.xword	0
	.size	test_err_cb, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Skipped %d tests\n"
	.size	.L.str.1, 18
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"Hit the number of tests limit (%d), breaking\n"
	.size	.L.str.2, 46
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"Test #%d: '%s' at line number %u\n"
	.size	.L.str.3, 34
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"*** Test program compiled that should not have at line %u: %s\n"
	.size	.L.str.4, 63
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"*** Erroneous test program failed with wrong message (%s) at line %u: %s\n"
	.size	.L.str.5, 74
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"*** Test program failed to compile at line %u: %s\n"
	.size	.L.str.6, 51
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"Disassembly:\n"
	.size	.L.str.7, 14
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"\n"
	.size	.L.str.8, 2
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"*** Input is invalid on line %u: %s\n"
	.size	.L.str.9, 37
	.type	JQ_DEBUG_TRACE,@object          // @JQ_DEBUG_TRACE
	.bss
	.globl	JQ_DEBUG_TRACE
	.p2align	2
JQ_DEBUG_TRACE:
	.word	0                               // 0x0
	.size	JQ_DEBUG_TRACE, 4
	.type	.L.str.10,@object               // @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"*** Expected result is invalid on line %u: %s\n"
	.size	.L.str.10, 47
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"*** Insufficient results for test at line number %u: %s\n"
	.size	.L.str.11, 57
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"*** Expected "
	.size	.L.str.12, 14
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	", but got "
	.size	.L.str.13, 11
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	" for test at line number %u: %s\n"
	.size	.L.str.14, 33
	.type	JV_PRINT_COLOR,@object          // @JV_PRINT_COLOR
	.bss
	.globl	JV_PRINT_COLOR
	.p2align	2
JV_PRINT_COLOR:
	.word	0                               // 0x0
	.size	JV_PRINT_COLOR, 4
	.type	JV_PRINT_REFCOUNT,@object       // @JV_PRINT_REFCOUNT
	.globl	JV_PRINT_REFCOUNT
	.p2align	2
JV_PRINT_REFCOUNT:
	.word	0                               // 0x0
	.size	JV_PRINT_REFCOUNT, 4
	.type	.L.str.15,@object               // @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"*** Superfluous result: "
	.size	.L.str.15, 25
	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	" for test at line number %u, %s\n"
	.size	.L.str.16, 33
	.type	.L.str.17,@object               // @.str.17
.L.str.17:
	.asciz	"%d of %d tests passed (%d malformed, %d skipped)\n"
	.size	.L.str.17, 50
	.type	.L.str.18,@object               // @.str.18
.L.str.18:
	.asciz	"WARN: skipped past the end of file, exiting with status 2\n"
	.size	.L.str.18, 59
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym run_jq_tests
	.addrsig_sym jq_init
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array
	.addrsig_sym jq_set_attr
	.addrsig_sym jv_string
	.addrsig_sym fgets
	.addrsig_sym skipline
	.addrsig_sym checkfail
	.addrsig_sym checkerrormsg
	.addrsig_sym jq_set_error_cb
	.addrsig_sym strlen
	.addrsig_sym printf
	.addrsig_sym jq_compile
	.addrsig_sym strcmp
	.addrsig_sym jq_dump_disassembly
	.addrsig_sym jv_parse
	.addrsig_sym jv_is_valid
	.addrsig_sym jq_start
	.addrsig_sym jq_next
	.addrsig_sym jv_free
	.addrsig_sym jv_equal
	.addrsig_sym jv_copy
	.addrsig_sym jv_dump
	.addrsig_sym jv_dump_string
	.addrsig_sym rand
	.addrsig_sym jv_parse_sized
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jq_teardown
	.addrsig_sym exit
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym test_err_cb
	.addrsig_sym JQ_DEBUG_TRACE
	.addrsig_sym JV_PRINT_COLOR
	.addrsig_sym JV_PRINT_REFCOUNT