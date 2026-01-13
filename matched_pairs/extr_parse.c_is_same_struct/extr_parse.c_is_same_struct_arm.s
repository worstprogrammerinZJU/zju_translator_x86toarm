	.text
	.p2align	2                               // -- Begin function is_same_struct
	.type	is_same_struct,@function
is_same_struct:                         // @is_same_struct
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_21
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	subs	w8, w8, #128
	b.eq	.LBB0_9
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #32]                   // 4-byte Folded Reload
	subs	w8, w8, #129
	b.eq	.LBB0_8
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #32]                   // 4-byte Folded Reload
	subs	w8, w8, #130
	b.ne	.LBB0_20
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	w9, [x8, #24]
	ldur	x8, [x29, #-24]
	ldr	w10, [x8, #24]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	ldur	x8, [x29, #-24]
	ldr	x1, [x8, #16]
	bl	is_same_struct
	subs	w8, w0, #0
	cset	w8, ne
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #28]                   // 4-byte Folded Reload
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_21
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	ldur	x8, [x29, #-24]
	ldr	x1, [x8, #16]
	bl	is_same_struct
	stur	w0, [x29, #-4]
	b	.LBB0_21
.LBB0_9:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.eq	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	stur	wzr, [x29, #-4]
	b	.LBB0_21
.LBB0_11:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #4]
	bl	dict_keys
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-24]
	ldr	w0, [x8, #4]
	bl	dict_keys
	str	x0, [sp, #40]
	ldur	x0, [x29, #-32]
	bl	vec_len
	str	w0, [sp, #24]                   // 4-byte Folded Spill
	ldr	x0, [sp, #40]
	bl	vec_len
	mov	w8, w0
	ldr	w0, [sp, #24]                   // 4-byte Folded Reload
	subs	w8, w0, w8
	b.eq	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	stur	wzr, [x29, #-4]
	b	.LBB0_21
.LBB0_13:
	str	wzr, [sp, #36]
	b	.LBB0_14
.LBB0_14:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	vec_len
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_19
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_14 Depth=1
	ldur	x0, [x29, #-32]
	ldr	w1, [sp, #36]
	bl	vec_get
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #40]
	ldr	w1, [sp, #36]
	bl	vec_get
	mov	x1, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	is_same_struct
	cbnz	w0, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	stur	wzr, [x29, #-4]
	b	.LBB0_21
.LBB0_17:                               //   in Loop: Header=BB0_14 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_14 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_14
.LBB0_19:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_21
.LBB0_20:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_21
.LBB0_21:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	is_same_struct, .Lfunc_end0-is_same_struct
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_same_struct
	.addrsig_sym dict_keys
	.addrsig_sym vec_len
	.addrsig_sym vec_get