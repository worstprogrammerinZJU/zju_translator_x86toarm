	.text
	.p2align	2                               // -- Begin function update_union_offset
	.type	update_union_offset,@function
update_union_offset:                    // @update_union_offset
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	wzr, [x29, #-28]
	bl	make_dict
	str	x0, [sp, #40]
	str	wzr, [sp, #36]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	vec_len
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_11
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-24]
	ldr	w1, [sp, #36]
	bl	vec_get
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	ldur	w0, [x29, #-28]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #36]
	bl	MAX
	stur	w0, [x29, #-28]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #32]
	bl	MAX
	ldur	x8, [x29, #-16]
	str	w0, [x8]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_STRUCT
	ldr	x9, [x9, :lo12:KIND_STRUCT]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #8]
	mov	w2, wzr
	bl	squash_unnamed_struct
	b	.LBB0_10
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	str	xzr, [x8, #24]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	tbnz	x8, #63, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	str	xzr, [x8, #16]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	dict_put
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_1
.LBB0_11:
	ldur	w8, [x29, #-28]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldur	w0, [x29, #-28]
	ldur	x8, [x29, #-16]
	ldr	w1, [x8]
	bl	compute_padding
	ldr	w8, [sp]                        // 4-byte Folded Reload
	add	w8, w8, w0
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldr	x0, [sp, #40]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	update_union_offset, .Lfunc_end0-update_union_offset
                                        // -- End function
	.type	KIND_STRUCT,@object             // @KIND_STRUCT
	.bss
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.xword	0                               // 0x0
	.size	KIND_STRUCT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym update_union_offset
	.addrsig_sym make_dict
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym MAX
	.addrsig_sym squash_unnamed_struct
	.addrsig_sym dict_put
	.addrsig_sym compute_padding
	.addrsig_sym KIND_STRUCT