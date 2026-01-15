	.text
	.p2align	2                               // -- Begin function squash_unnamed_struct
	.type	squash_unnamed_struct,@function
squash_unnamed_struct:                  // @squash_unnamed_struct
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #4]
	bl	dict_keys
	str	x0, [sp, #32]
	str	wzr, [sp, #28]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	x0, [sp, #32]
	bl	vec_len
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #32]
	ldr	w1, [sp, #28]
	bl	vec_get
	str	x0, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #4]
	ldr	x1, [sp, #16]
	bl	dict_get
	bl	copy_type
	str	x0, [sp, #8]
	ldur	w10, [x29, #-20]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	dict_put
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	squash_unnamed_struct, .Lfunc_end0-squash_unnamed_struct
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym squash_unnamed_struct
	.addrsig_sym dict_keys
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym copy_type
	.addrsig_sym dict_get
	.addrsig_sym dict_put