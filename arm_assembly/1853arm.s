	.text
	.p2align	2                               // -- Begin function read_array_initializer_sub
	.type	read_array_initializer_sub,@function
read_array_initializer_sub:             // @read_array_initializer_sub
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	bl	maybe_read_brace
	stur	w0, [x29, #-28]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, le
	and	w8, w8, #0x1
	str	w8, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldr	w8, [x8]
	str	w8, [sp, #28]
	str	wzr, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #32]
	mov	w9, #1
	str	w9, [sp]                        // 4-byte Folded Spill
	cbnz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, lt
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp]                        // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_22
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	bl	get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	mov	w1, #125
	bl	is_keyword
	cbz	x0, .LBB0_8
	b	.LBB0_5
.LBB0_5:
	ldur	w8, [x29, #-28]
	cbnz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x0, [sp, #16]
	bl	unget_token
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_25
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	mov	w1, #46
	bl	is_keyword
	cbnz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	mov	w1, #91
	bl	is_keyword
	cbz	x0, .LBB0_13
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	cbnz	w8, .LBB0_13
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-24]
	cbnz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	x0, [sp, #16]
	bl	unget_token
	b	.LBB0_27
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	mov	w1, #91
	bl	is_keyword
	cbz	x0, .LBB0_19
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	bl	peek
	str	x0, [sp, #8]
	bl	read_intexpr
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	tbnz	w8, #31, .LBB0_17
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #32]
	cbnz	w8, .LBB0_18
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.gt	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	ldr	w2, [sp, #4]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	str	w8, [sp, #24]
	mov	w0, #93
	bl	expect
	mov	w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_20
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	bl	unget_token
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	ldur	w8, [x29, #-20]
	ldr	w9, [sp, #28]
	ldr	w10, [sp, #24]
	mul	w9, w9, w10
	add	w2, w8, w9
	ldur	w3, [x29, #-24]
	bl	read_initializer_elem
	bl	maybe_skip_comma
	stur	wzr, [x29, #-24]
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_1
.LBB0_22:
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB0_24
	b	.LBB0_23
.LBB0_23:
	bl	skip_to_brace
	b	.LBB0_24
.LBB0_24:
	b	.LBB0_25
.LBB0_25:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w8, w8, #0
	b.ge	.LBB0_27
	b	.LBB0_26
.LBB0_26:
	ldr	w8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #24]
	mul	w8, w8, w9
	ldur	x9, [x29, #-16]
	str	w8, [x9, #4]
	b	.LBB0_27
.LBB0_27:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	read_array_initializer_sub, .Lfunc_end0-read_array_initializer_sub
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"array designator exceeds array bounds: %d"
	.size	.L.str, 42
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_array_initializer_sub
	.addrsig_sym maybe_read_brace
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym unget_token
	.addrsig_sym peek
	.addrsig_sym read_intexpr
	.addrsig_sym errort
	.addrsig_sym expect
	.addrsig_sym read_initializer_elem
	.addrsig_sym maybe_skip_comma
	.addrsig_sym skip_to_brace