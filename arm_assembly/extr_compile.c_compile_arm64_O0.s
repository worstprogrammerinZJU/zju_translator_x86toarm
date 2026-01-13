	.text
	.p2align	2                               // -- Begin function compile
	.type	compile,@function
compile:                                // @compile
// %bb.0:
	sub	sp, sp, #368
	stp	x29, x30, [sp, #336]            // 16-byte Folded Spill
	str	x28, [sp, #352]                 // 8-byte Folded Spill
	add	x29, sp, #336
	mov	x8, x0
	sub	x0, x29, #16
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	stur	x8, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-40]
	stur	x5, [x29, #-48]
	stur	wzr, [x29, #-52]
	stur	wzr, [x29, #-56]
	stur	wzr, [x29, #-60]
	ldur	x8, [x29, #-24]
	str	wzr, [x8]
	ldur	x1, [x29, #-40]
	ldur	x2, [x29, #-48]
	bl	expand_call_arglist
	ldursw	x8, [x29, #-52]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-52]
	adrp	x8, RET
	ldr	w0, [x8, :lo12:RET]
	bl	gen_op_simple
	mov	w2, w0
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	bl	BLOCK
	stur	x0, [x29, #-80]
	stur	x1, [x29, #-72]
	ldur	q0, [x29, #-80]
	stur	q0, [x29, #-16]
	bl	jv_array
	stur	x0, [x29, #-88]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-96]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_6 Depth 2
	ldur	x8, [x29, #-96]
	cbz	x8, .LBB0_21
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldr	x8, [x8, #64]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldr	x0, [x8]
	bl	opcode_describe
	ldr	w8, [x0]
	stur	w8, [x29, #-100]
	ldur	x8, [x29, #-96]
	ldr	x8, [x8]
	adrp	x9, CALL_JQ
	ldr	x9, [x9, :lo12:CALL_JQ]
	subs	x8, x8, x9
	b.ne	.LBB0_10
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldr	x8, [x8, #72]
	stur	x8, [x29, #-112]
	b	.LBB0_6
.LBB0_6:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-112]
	cbz	x8, .LBB0_9
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=2
	ldur	w8, [x29, #-100]
	add	w8, w8, #2
	stur	w8, [x29, #-100]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-112]
	ldr	x8, [x8, #64]
	stur	x8, [x29, #-112]
	b	.LBB0_6
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w9, [x29, #-100]
	ldur	w8, [x29, #-56]
	add	w8, w8, w9
	stur	w8, [x29, #-56]
	ldur	w8, [x29, #-56]
	ldur	x9, [x29, #-96]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-96]
	str	x8, [x9, #96]
	ldur	x8, [x29, #-96]
	ldr	x9, [x8]
	adrp	x8, CLOSURE_REF
	ldr	x10, [x8, :lo12:CLOSURE_REF]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #108]                  // 4-byte Folded Spill
	b.eq	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldr	x8, [x8]
	adrp	x9, CLOSURE_PARAM
	ldr	x9, [x9, :lo12:CLOSURE_PARAM]
	subs	x8, x8, x9
	cset	w8, ne
	str	w8, [sp, #108]                  // 4-byte Folded Spill
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #108]                  // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-96]
	ldr	x0, [x8]
	bl	opcode_describe
	ldr	w8, [x0, #4]
	adrp	x9, OP_HAS_VARIABLE
	ldr	w9, [x9, :lo12:OP_HAS_VARIABLE]
	and	w8, w8, w9
	cbz	w8, .LBB0_15
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-96]
	subs	x8, x8, x9
	b.ne	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-60]
	add	w9, w8, #1
	stur	w9, [x29, #-60]
	ldur	x9, [x29, #-96]
	str	w8, [x9, #24]
	ldur	x8, [x29, #-88]
	str	x8, [sp, #96]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-96]
	ldr	x0, [x8, #16]
	bl	jv_string
	mov	x1, x0
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	bl	jv_array_append
	stur	x0, [x29, #-88]
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldr	x8, [x8]
	adrp	x9, CLOSURE_CREATE
	ldr	x9, [x9, :lo12:CLOSURE_CREATE]
	subs	x8, x8, x9
	b.ne	.LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-96]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x10, [x29, #-24]
	ldr	w8, [x10]
	add	w9, w8, #1
	str	w9, [x10]
	ldur	x9, [x29, #-96]
	str	w8, [x9, #24]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldr	x8, [x8]
	adrp	x9, CLOSURE_CREATE_C
	ldr	x9, [x9, :lo12:CLOSURE_CREATE_C]
	subs	x8, x8, x9
	b.ne	.LBB0_19
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-96]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-24]
	ldr	x10, [x8, #64]
	ldr	w8, [x10, #16]
	add	w9, w8, #1
	str	w9, [x10, #16]
	stur	w8, [x29, #-116]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #64]
	ldr	x8, [x8, #8]
	str	x8, [sp, #88]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-96]
	ldr	x0, [x8, #16]
	bl	jv_string
	mov	x1, x0
	ldr	x0, [sp, #88]                   // 8-byte Folded Reload
	bl	jv_array_append
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #64]
	str	x0, [x8, #8]
	ldur	x8, [x29, #-96]
	ldr	x8, [x8, #48]
	ldr	w8, [x8]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #64]
	ldr	x9, [x9]
	ldursw	x10, [x29, #-116]
	str	w8, [x9, x10, lsl #2]
	ldur	w8, [x29, #-116]
	ldur	x9, [x29, #-96]
	str	w8, [x9, #24]
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldr	x8, [x8, #64]
	stur	x8, [x29, #-96]
	b	.LBB0_1
.LBB0_21:
	ldur	w8, [x29, #-56]
	subs	w8, w8, #16, lsl #12            // =65536
	b.lt	.LBB0_23
	b	.LBB0_22
.LBB0_22:
	ldur	x0, [x29, #-32]
	adrp	x8, UNKNOWN_LOCATION
	ldr	w1, [x8, :lo12:UNKNOWN_LOCATION]
	ldur	w3, [x29, #-56]
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	locfile_locate
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_23
.LBB0_23:
	ldur	w8, [x29, #-56]
	ldur	x9, [x29, #-24]
	str	w8, [x9, #4]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #40]
	str	x8, [sp, #80]                   // 8-byte Folded Spill
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string
	mov	x1, x0
	ldr	x0, [sp, #80]                   // 8-byte Folded Reload
	ldur	x2, [x29, #-88]
	bl	jv_object_set
	ldur	x8, [x29, #-24]
	str	x0, [x8, #40]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	cbz	w8, .LBB0_35
	b	.LBB0_24
.LBB0_24:
	ldur	x8, [x29, #-24]
	ldr	w1, [x8]
	mov	w0, #8
	bl	jv_mem_calloc
	ldur	x8, [x29, #-24]
	str	x0, [x8, #32]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-128]
	b	.LBB0_25
.LBB0_25:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_28 Depth 2
	ldur	x8, [x29, #-128]
	cbz	x8, .LBB0_34
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_25 Depth=1
	ldur	x8, [x29, #-128]
	ldr	x8, [x8]
	adrp	x9, CLOSURE_CREATE
	ldr	x9, [x9, :lo12:CLOSURE_CREATE]
	subs	x8, x8, x9
	b.ne	.LBB0_32
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_25 Depth=1
	mov	w0, #72
	bl	jv_mem_alloc
	stur	x0, [x29, #-136]
	ldur	x8, [x29, #-136]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #32]
	ldur	x10, [x29, #-128]
	ldrsw	x10, [x10, #24]
	str	x8, [x9, x10, lsl #3]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #64]
	ldur	x9, [x29, #-136]
	str	x8, [x9, #64]
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-136]
	str	x8, [x9, #56]
	ldur	x8, [x29, #-136]
	str	xzr, [x8, #48]
	bl	jv_object
	str	x0, [sp, #72]                   // 8-byte Folded Spill
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	jv_string
	str	x0, [sp, #64]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-128]
	ldr	x0, [x8, #16]
	bl	jv_string
	ldr	x1, [sp, #64]                   // 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #72]                   // 8-byte Folded Reload
	bl	jv_object_set
	ldur	x8, [x29, #-136]
	str	x0, [x8, #40]
	bl	jv_array
	stur	x0, [x29, #-144]
	ldur	x8, [x29, #-128]
	ldr	x8, [x8, #72]
	stur	x8, [x29, #-152]
	b	.LBB0_28
.LBB0_28:                               //   Parent Loop BB0_25 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-152]
	cbz	x8, .LBB0_31
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_28 Depth=2
	ldur	x8, [x29, #-152]
	ldr	x8, [x8]
	adrp	x9, CLOSURE_PARAM
	ldr	x9, [x9, :lo12:CLOSURE_PARAM]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-152]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-152]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x10, [x29, #-136]
	ldr	x8, [x10, #48]
	add	x9, x8, #1
	str	x9, [x10, #48]
	ldur	x9, [x29, #-152]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9, #24]
	ldur	x8, [x29, #-136]
	ldur	x9, [x29, #-152]
	str	x8, [x9, #96]
	ldur	x8, [x29, #-144]
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-152]
	ldr	x0, [x8, #16]
	bl	jv_string
	mov	x1, x0
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	bl	jv_array_append
	stur	x0, [x29, #-144]
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_28 Depth=2
	ldur	x8, [x29, #-152]
	ldr	x8, [x8, #64]
	stur	x8, [x29, #-152]
	b	.LBB0_28
.LBB0_31:                               //   in Loop: Header=BB0_25 Depth=1
	ldur	x8, [x29, #-136]
	ldr	x8, [x8, #40]
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	jv_string
	mov	x1, x0
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	ldur	x2, [x29, #-144]
	bl	jv_object_set
	ldur	x8, [x29, #-136]
	str	x0, [x8, #40]
	ldur	x0, [x29, #-136]
	ldur	x8, [x29, #-128]
	ldur	x3, [x29, #-32]
	ldur	x4, [x29, #-40]
	ldur	x5, [x29, #-48]
	ldr	x1, [x8, #80]
	ldr	x2, [x8, #88]
	bl	compile
	ldur	w8, [x29, #-52]
	add	w8, w8, w0
	stur	w8, [x29, #-52]
	ldur	x8, [x29, #-128]
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	bl	gen_noop
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	str	x0, [sp, #168]
	str	x1, [sp, #176]
	ldur	q0, [sp, #168]
	str	q0, [x8, #80]
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_25 Depth=1
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_25 Depth=1
	ldur	x8, [x29, #-128]
	ldr	x8, [x8, #64]
	stur	x8, [x29, #-128]
	b	.LBB0_25
.LBB0_34:
	b	.LBB0_36
.LBB0_35:
	ldur	x8, [x29, #-24]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #32]
	b	.LBB0_36
.LBB0_36:
	ldur	x8, [x29, #-24]
	ldr	w1, [x8, #4]
	mov	w0, #4
	bl	jv_mem_calloc
	str	x0, [sp, #160]
	ldr	x8, [sp, #160]
	ldur	x9, [x29, #-24]
	str	x8, [x9, #8]
	stur	wzr, [x29, #-56]
	bl	jv_array
	str	x0, [sp, #152]
	mov	w8, #-1
	str	w8, [sp, #148]
	ldur	w8, [x29, #-52]
	cbnz	w8, .LBB0_80
	b	.LBB0_37
.LBB0_37:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #136]
	b	.LBB0_38
.LBB0_38:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_52 Depth 2
	ldr	x8, [sp, #136]
	cbz	x8, .LBB0_79
	b	.LBB0_39
.LBB0_39:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #136]
	ldr	x0, [x8]
	bl	opcode_describe
	str	x0, [sp, #128]
	ldr	x8, [sp, #128]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_41
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_38 Depth=1
	b	.LBB0_78
.LBB0_41:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #136]
	ldr	x8, [x8]
	ldr	x9, [sp, #160]
	ldursw	x10, [x29, #-56]
	mov	w11, w10
	add	w11, w11, #1
	stur	w11, [x29, #-56]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #136]
	ldr	x9, [x8]
	adrp	x8, CLOSURE_REF
	ldr	x10, [x8, :lo12:CLOSURE_REF]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	b.eq	.LBB0_43
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #136]
	ldr	x8, [x8]
	adrp	x9, CLOSURE_PARAM
	ldr	x9, [x9, :lo12:CLOSURE_PARAM]
	subs	x8, x8, x9
	cset	w8, ne
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	b	.LBB0_43
.LBB0_43:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	w8, [sp, #36]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #136]
	ldr	x8, [x8]
	adrp	x9, CALL_BUILTIN
	ldr	x9, [x9, :lo12:CALL_BUILTIN]
	subs	x8, x8, x9
	b.ne	.LBB0_45
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #136]
	ldr	x8, [x8, #56]
	ldr	x8, [x8]
	adrp	x9, CLOSURE_CREATE_C
	ldr	x9, [x9, :lo12:CLOSURE_CREATE_C]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #136]
	ldr	x8, [x8, #72]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #136]
	ldr	w8, [x8, #24]
	ldr	x9, [sp, #160]
	ldursw	x10, [x29, #-56]
	mov	w11, w10
	add	w11, w11, #1
	stur	w11, [x29, #-56]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #136]
	ldr	x8, [x8, #56]
	ldr	w8, [x8, #24]
	ldr	x9, [sp, #160]
	ldursw	x10, [x29, #-56]
	mov	w11, w10
	add	w11, w11, #1
	stur	w11, [x29, #-56]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_77
.LBB0_45:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #136]
	ldr	x8, [x8]
	adrp	x9, CALL_JQ
	ldr	x9, [x9, :lo12:CALL_JQ]
	subs	x8, x8, x9
	b.ne	.LBB0_58
	b	.LBB0_46
.LBB0_46:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #136]
	ldr	x8, [x8, #56]
	ldr	x9, [x8]
	adrp	x8, CLOSURE_CREATE
	ldr	x10, [x8, :lo12:CLOSURE_CREATE]
	mov	w8, #1
	subs	x9, x9, x10
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	b.eq	.LBB0_48
	b	.LBB0_47
.LBB0_47:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #136]
	ldr	x8, [x8, #56]
	ldr	x8, [x8]
	adrp	x9, CLOSURE_PARAM
	ldr	x9, [x9, :lo12:CLOSURE_PARAM]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	b	.LBB0_48
.LBB0_48:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	w8, [sp, #32]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #136]
	ldr	w8, [x8, #24]
	ldr	x9, [sp, #160]
	ldursw	x10, [x29, #-56]
	mov	w11, w10
	add	w11, w11, #1
	stur	w11, [x29, #-56]
	str	w8, [x9, x10, lsl #2]
	ldur	x0, [x29, #-24]
	ldr	x8, [sp, #136]
	ldr	x1, [x8, #56]
	bl	nesting_level
	ldr	x8, [sp, #160]
	ldursw	x9, [x29, #-56]
	mov	w10, w9
	add	w10, w10, #1
	stur	w10, [x29, #-56]
	str	w0, [x8, x9, lsl #2]
	ldr	x8, [sp, #136]
	ldr	x8, [x8, #56]
	ldr	w8, [x8, #24]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	ldr	x8, [sp, #136]
	ldr	x8, [x8, #56]
	ldr	x8, [x8]
	adrp	x9, CLOSURE_CREATE
	ldr	x9, [x9, :lo12:CLOSURE_CREATE]
	subs	x8, x8, x9
	b.ne	.LBB0_50
	b	.LBB0_49
.LBB0_49:                               //   in Loop: Header=BB0_38 Depth=1
	adrp	x8, ARG_NEWCLOSURE
	ldr	w8, [x8, :lo12:ARG_NEWCLOSURE]
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	b	.LBB0_51
.LBB0_50:                               //   in Loop: Header=BB0_38 Depth=1
	mov	w8, wzr
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	b	.LBB0_51
.LBB0_51:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	w8, [sp, #28]                   // 4-byte Folded Reload
	ldr	w9, [sp, #24]                   // 4-byte Folded Reload
	orr	w8, w8, w9
	ldr	x9, [sp, #160]
	ldursw	x10, [x29, #-56]
	mov	w11, w10
	add	w11, w11, #1
	stur	w11, [x29, #-56]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #136]
	ldr	x8, [x8, #72]
	str	x8, [sp, #120]
	b	.LBB0_52
.LBB0_52:                               //   Parent Loop BB0_38 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #120]
	cbz	x8, .LBB0_57
	b	.LBB0_53
.LBB0_53:                               //   in Loop: Header=BB0_52 Depth=2
	ldr	x8, [sp, #120]
	ldr	x9, [x8]
	adrp	x8, CLOSURE_REF
	ldr	x10, [x8, :lo12:CLOSURE_REF]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b.ne	.LBB0_55
	b	.LBB0_54
.LBB0_54:                               //   in Loop: Header=BB0_52 Depth=2
	ldr	x8, [sp, #120]
	ldr	x8, [x8, #56]
	ldr	x8, [x8]
	adrp	x9, CLOSURE_CREATE
	ldr	x9, [x9, :lo12:CLOSURE_CREATE]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_55
.LBB0_55:                               //   in Loop: Header=BB0_52 Depth=2
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-24]
	ldr	x8, [sp, #120]
	ldr	x1, [x8, #56]
	bl	nesting_level
	ldr	x8, [sp, #160]
	ldursw	x9, [x29, #-56]
	mov	w10, w9
	add	w10, w10, #1
	stur	w10, [x29, #-56]
	str	w0, [x8, x9, lsl #2]
	ldr	x8, [sp, #120]
	ldr	x8, [x8, #56]
	ldr	w8, [x8, #24]
	adrp	x9, ARG_NEWCLOSURE
	ldr	w9, [x9, :lo12:ARG_NEWCLOSURE]
	orr	w8, w8, w9
	ldr	x9, [sp, #160]
	ldursw	x10, [x29, #-56]
	mov	w11, w10
	add	w11, w11, #1
	stur	w11, [x29, #-56]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_56
.LBB0_56:                               //   in Loop: Header=BB0_52 Depth=2
	ldr	x8, [sp, #120]
	ldr	x8, [x8, #64]
	str	x8, [sp, #120]
	b	.LBB0_52
.LBB0_57:                               //   in Loop: Header=BB0_38 Depth=1
	b	.LBB0_76
.LBB0_58:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #128]
	ldr	w8, [x8, #4]
	adrp	x9, OP_HAS_CONSTANT
	ldr	w9, [x9, :lo12:OP_HAS_CONSTANT]
	and	w8, w8, w9
	cbz	w8, .LBB0_61
	b	.LBB0_59
.LBB0_59:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #128]
	ldr	w8, [x8, #4]
	adrp	x9, OP_HAS_VARIABLE
	ldr	w9, [x9, :lo12:OP_HAS_VARIABLE]
	and	w8, w8, w9
	cbz	w8, .LBB0_61
	b	.LBB0_60
.LBB0_60:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x0, [sp, #152]
	bl	jv_copy
	bl	jv_array_length
	ldr	x8, [sp, #160]
	ldursw	x9, [x29, #-56]
	mov	w10, w9
	add	w10, w10, #1
	stur	w10, [x29, #-56]
	str	w0, [x8, x9, lsl #2]
	ldr	x8, [sp, #152]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x8, [sp, #136]
	ldr	x0, [x8, #40]
	bl	jv_copy
	mov	x1, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	jv_array_append
	str	x0, [sp, #152]
	ldur	x0, [x29, #-24]
	ldr	x8, [sp, #136]
	ldr	x1, [x8, #56]
	bl	nesting_level
	ldr	x8, [sp, #160]
	ldursw	x9, [x29, #-56]
	mov	w10, w9
	add	w10, w10, #1
	stur	w10, [x29, #-56]
	str	w0, [x8, x9, lsl #2]
	ldr	x8, [sp, #136]
	ldr	x8, [x8, #56]
	ldr	w8, [x8, #24]
	str	w8, [sp, #116]
	ldr	w8, [sp, #116]
	ldr	x9, [sp, #160]
	ldursw	x10, [x29, #-56]
	mov	w11, w10
	add	w11, w11, #1
	stur	w11, [x29, #-56]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_75
.LBB0_61:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #128]
	ldr	w8, [x8, #4]
	adrp	x9, OP_HAS_CONSTANT
	ldr	w9, [x9, :lo12:OP_HAS_CONSTANT]
	and	w8, w8, w9
	cbz	w8, .LBB0_63
	b	.LBB0_62
.LBB0_62:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x0, [sp, #152]
	bl	jv_copy
	bl	jv_array_length
	ldr	x8, [sp, #160]
	ldursw	x9, [x29, #-56]
	mov	w10, w9
	add	w10, w10, #1
	stur	w10, [x29, #-56]
	str	w0, [x8, x9, lsl #2]
	ldr	x8, [sp, #152]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x8, [sp, #136]
	ldr	x0, [x8, #40]
	bl	jv_copy
	mov	x1, x0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	jv_array_append
	str	x0, [sp, #152]
	b	.LBB0_74
.LBB0_63:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #128]
	ldr	w8, [x8, #4]
	adrp	x9, OP_HAS_VARIABLE
	ldr	w9, [x9, :lo12:OP_HAS_VARIABLE]
	and	w8, w8, w9
	cbz	w8, .LBB0_67
	b	.LBB0_64
.LBB0_64:                               //   in Loop: Header=BB0_38 Depth=1
	ldur	x0, [x29, #-24]
	ldr	x8, [sp, #136]
	ldr	x1, [x8, #56]
	bl	nesting_level
	ldr	x8, [sp, #160]
	ldursw	x9, [x29, #-56]
	mov	w10, w9
	add	w10, w10, #1
	stur	w10, [x29, #-56]
	str	w0, [x8, x9, lsl #2]
	ldr	x8, [sp, #136]
	ldr	x8, [x8, #56]
	ldr	w8, [x8, #24]
	str	w8, [sp, #112]
	ldr	w8, [sp, #112]
	ldr	x9, [sp, #160]
	ldursw	x10, [x29, #-56]
	mov	w11, w10
	add	w11, w11, #1
	stur	w11, [x29, #-56]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #112]
	ldr	w9, [sp, #148]
	subs	w8, w8, w9
	b.le	.LBB0_66
	b	.LBB0_65
.LBB0_65:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	w8, [sp, #112]
	str	w8, [sp, #148]
	b	.LBB0_66
.LBB0_66:                               //   in Loop: Header=BB0_38 Depth=1
	b	.LBB0_73
.LBB0_67:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #128]
	ldr	w8, [x8, #4]
	adrp	x9, OP_HAS_BRANCH
	ldr	w9, [x9, :lo12:OP_HAS_BRANCH]
	and	w8, w8, w9
	cbz	w8, .LBB0_69
	b	.LBB0_68
.LBB0_68:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #136]
	ldr	x8, [x8, #32]
	ldr	w8, [x8]
	adds	w8, w8, #1
	cset	w8, ne
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #136]
	ldr	x8, [x8, #32]
	ldr	w8, [x8]
	ldur	w9, [x29, #-56]
	subs	w8, w8, w9
	cset	w8, gt
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #136]
	ldr	x8, [x8, #32]
	ldr	w8, [x8]
	ldur	w9, [x29, #-56]
	add	w9, w9, #1
	subs	w8, w8, w9
	ldr	x9, [sp, #160]
	ldursw	x10, [x29, #-56]
	str	w8, [x9, x10, lsl #2]
	ldur	w8, [x29, #-56]
	add	w8, w8, #1
	stur	w8, [x29, #-56]
	b	.LBB0_72
.LBB0_69:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #128]
	ldr	w8, [x8]
	subs	w8, w8, #1
	b.le	.LBB0_71
	b	.LBB0_70
.LBB0_70:                               //   in Loop: Header=BB0_38 Depth=1
	mov	w0, wzr
	bl	assert
	b	.LBB0_71
.LBB0_71:                               //   in Loop: Header=BB0_38 Depth=1
	b	.LBB0_72
.LBB0_72:                               //   in Loop: Header=BB0_38 Depth=1
	b	.LBB0_73
.LBB0_73:                               //   in Loop: Header=BB0_38 Depth=1
	b	.LBB0_74
.LBB0_74:                               //   in Loop: Header=BB0_38 Depth=1
	b	.LBB0_75
.LBB0_75:                               //   in Loop: Header=BB0_38 Depth=1
	b	.LBB0_76
.LBB0_76:                               //   in Loop: Header=BB0_38 Depth=1
	b	.LBB0_77
.LBB0_77:                               //   in Loop: Header=BB0_38 Depth=1
	b	.LBB0_78
.LBB0_78:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #136]
	ldr	x8, [x8, #64]
	str	x8, [sp, #136]
	b	.LBB0_38
.LBB0_79:
	b	.LBB0_80
.LBB0_80:
	ldr	x8, [sp, #152]
	ldur	x9, [x29, #-24]
	str	x8, [x9, #24]
	ldr	w8, [sp, #148]
	add	w8, w8, #2
	ldur	x9, [x29, #-24]
	str	w8, [x9, #16]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	bl	block_free
	ldur	w0, [x29, #-52]
	ldr	x28, [sp, #352]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #336]            // 16-byte Folded Reload
	add	sp, sp, #368
	ret
.Lfunc_end0:
	.size	compile, .Lfunc_end0-compile
                                        // -- End function
	.type	RET,@object                     // @RET
	.bss
	.globl	RET
	.p2align	2
RET:
	.word	0                               // 0x0
	.size	RET, 4
	.type	CALL_JQ,@object                 // @CALL_JQ
	.globl	CALL_JQ
	.p2align	3
CALL_JQ:
	.xword	0                               // 0x0
	.size	CALL_JQ, 8
	.type	CLOSURE_REF,@object             // @CLOSURE_REF
	.globl	CLOSURE_REF
	.p2align	3
CLOSURE_REF:
	.xword	0                               // 0x0
	.size	CLOSURE_REF, 8
	.type	CLOSURE_PARAM,@object           // @CLOSURE_PARAM
	.globl	CLOSURE_PARAM
	.p2align	3
CLOSURE_PARAM:
	.xword	0                               // 0x0
	.size	CLOSURE_PARAM, 8
	.type	OP_HAS_VARIABLE,@object         // @OP_HAS_VARIABLE
	.globl	OP_HAS_VARIABLE
	.p2align	2
OP_HAS_VARIABLE:
	.word	0                               // 0x0
	.size	OP_HAS_VARIABLE, 4
	.type	CLOSURE_CREATE,@object          // @CLOSURE_CREATE
	.globl	CLOSURE_CREATE
	.p2align	3
CLOSURE_CREATE:
	.xword	0                               // 0x0
	.size	CLOSURE_CREATE, 8
	.type	CLOSURE_CREATE_C,@object        // @CLOSURE_CREATE_C
	.globl	CLOSURE_CREATE_C
	.p2align	3
CLOSURE_CREATE_C:
	.xword	0                               // 0x0
	.size	CLOSURE_CREATE_C, 8
	.type	UNKNOWN_LOCATION,@object        // @UNKNOWN_LOCATION
	.globl	UNKNOWN_LOCATION
	.p2align	2
UNKNOWN_LOCATION:
	.word	0                               // 0x0
	.size	UNKNOWN_LOCATION, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"function compiled to %d bytes which is too long"
	.size	.L.str, 48
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"locals"
	.size	.L.str.1, 7
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"name"
	.size	.L.str.2, 5
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"params"
	.size	.L.str.3, 7
	.type	CALL_BUILTIN,@object            // @CALL_BUILTIN
	.bss
	.globl	CALL_BUILTIN
	.p2align	3
CALL_BUILTIN:
	.xword	0                               // 0x0
	.size	CALL_BUILTIN, 8
	.type	ARG_NEWCLOSURE,@object          // @ARG_NEWCLOSURE
	.globl	ARG_NEWCLOSURE
	.p2align	2
ARG_NEWCLOSURE:
	.word	0                               // 0x0
	.size	ARG_NEWCLOSURE, 4
	.type	OP_HAS_CONSTANT,@object         // @OP_HAS_CONSTANT
	.globl	OP_HAS_CONSTANT
	.p2align	2
OP_HAS_CONSTANT:
	.word	0                               // 0x0
	.size	OP_HAS_CONSTANT, 4
	.type	OP_HAS_BRANCH,@object           // @OP_HAS_BRANCH
	.globl	OP_HAS_BRANCH
	.p2align	2
OP_HAS_BRANCH:
	.word	0                               // 0x0
	.size	OP_HAS_BRANCH, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym compile
	.addrsig_sym expand_call_arglist
	.addrsig_sym BLOCK
	.addrsig_sym gen_op_simple
	.addrsig_sym jv_array
	.addrsig_sym assert
	.addrsig_sym opcode_describe
	.addrsig_sym jv_array_append
	.addrsig_sym jv_string
	.addrsig_sym locfile_locate
	.addrsig_sym jv_object_set
	.addrsig_sym jv_mem_calloc
	.addrsig_sym jv_mem_alloc
	.addrsig_sym jv_object
	.addrsig_sym gen_noop
	.addrsig_sym nesting_level
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym block_free
	.addrsig_sym RET
	.addrsig_sym CALL_JQ
	.addrsig_sym CLOSURE_REF
	.addrsig_sym CLOSURE_PARAM
	.addrsig_sym OP_HAS_VARIABLE
	.addrsig_sym CLOSURE_CREATE
	.addrsig_sym CLOSURE_CREATE_C
	.addrsig_sym UNKNOWN_LOCATION
	.addrsig_sym CALL_BUILTIN
	.addrsig_sym ARG_NEWCLOSURE
	.addrsig_sym OP_HAS_CONSTANT
	.addrsig_sym OP_HAS_BRANCH