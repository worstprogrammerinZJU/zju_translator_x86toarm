	.text
	.p2align	2                               // -- Begin function update_struct_offset
	.type	update_struct_offset,@function
update_struct_offset:                   // @update_struct_offset
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	wzr, [x29, #-28]
	stur	wzr, [x29, #-32]
	bl	make_dict
	stur	x0, [x29, #-40]
	stur	wzr, [x29, #-44]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-44]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	vec_len
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_19
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-24]
	ldur	w1, [x29, #-44]
	bl	vec_get
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	bl	MAX
	ldur	x8, [x29, #-16]
	str	w0, [x8]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	cbnz	x8, .LBB0_7
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	adrp	x9, KIND_STRUCT
	ldr	x9, [x9, :lo12:KIND_STRUCT]
	subs	x8, x8, x9
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	sub	x0, x29, #28
	sub	x1, x29, #32
	bl	finish_bitfield
	ldur	w0, [x29, #-28]
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	bl	compute_padding
	ldur	w8, [x29, #-28]
	add	w8, w8, w0
	stur	w8, [x29, #-28]
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #24]
	ldur	w2, [x29, #-28]
	bl	squash_unnamed_struct
	ldr	x8, [sp, #24]
	ldr	w9, [x8, #16]
	ldur	w8, [x29, #-28]
	add	w8, w8, w9
	stur	w8, [x29, #-28]
	b	.LBB0_18
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #24]
	cbnz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	sub	x0, x29, #28
	sub	x1, x29, #32
	bl	finish_bitfield
	ldur	w0, [x29, #-28]
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	bl	compute_padding
	ldur	w8, [x29, #-28]
	add	w8, w8, w0
	stur	w8, [x29, #-28]
	stur	wzr, [x29, #-32]
	b	.LBB0_18
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #24]
	subs	x8, x8, #0
	b.le	.LBB0_14
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #16]
	lsl	w8, w8, #3
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	ldur	w10, [x29, #-28]
	ldur	w9, [x29, #-32]
	add	w9, w9, w10, lsl #3
	ldr	w11, [sp, #20]
	sdiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #24]
	ldrsw	x9, [sp, #16]
	subs	x8, x8, x9
	b.gt	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	ldr	x9, [sp, #24]
	str	w8, [x9, #32]
	ldur	w8, [x29, #-32]
	ldr	x9, [sp, #24]
	str	w8, [x9, #36]
	b	.LBB0_13
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	sub	x0, x29, #28
	sub	x1, x29, #32
	bl	finish_bitfield
	ldur	w0, [x29, #-28]
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	bl	compute_padding
	ldur	w8, [x29, #-28]
	add	w8, w8, w0
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-28]
	ldr	x9, [sp, #24]
	str	w8, [x9, #32]
	ldr	x8, [sp, #24]
	str	wzr, [x8, #36]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [x8, #24]
	ldursw	x8, [x29, #-32]
	add	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-32]
	b	.LBB0_15
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	sub	x0, x29, #28
	sub	x1, x29, #32
	bl	finish_bitfield
	ldur	w0, [x29, #-28]
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	bl	compute_padding
	ldur	w8, [x29, #-28]
	add	w8, w8, w0
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-28]
	ldr	x9, [sp, #24]
	str	w8, [x9, #32]
	ldr	x8, [sp, #24]
	ldr	w9, [x8, #16]
	ldur	w8, [x29, #-28]
	add	w8, w8, w9
	stur	w8, [x29, #-28]
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #24]
	bl	dict_put
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_1
.LBB0_19:
	sub	x0, x29, #28
	sub	x1, x29, #32
	bl	finish_bitfield
	ldur	w8, [x29, #-28]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-28]
	ldur	x8, [x29, #-16]
	ldr	w1, [x8]
	bl	compute_padding
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	add	w8, w8, w0
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldur	x0, [x29, #-40]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	update_struct_offset, .Lfunc_end0-update_struct_offset
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
	.addrsig_sym update_struct_offset
	.addrsig_sym make_dict
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym MAX
	.addrsig_sym finish_bitfield
	.addrsig_sym compute_padding
	.addrsig_sym squash_unnamed_struct
	.addrsig_sym dict_put
	.addrsig_sym KIND_STRUCT