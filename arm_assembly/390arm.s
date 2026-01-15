	.text
	.p2align	2                               // -- Begin function add_hide_set
	.type	add_hide_set,@function
add_hide_set:                           // @add_hide_set
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	bl	make_vector
	str	x0, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	vec_len
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #20]
	bl	vec_get
	bl	copy_token
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	ldur	x1, [x29, #-16]
	bl	set_union
	ldr	x8, [sp, #8]
	str	w0, [x8]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #8]
	bl	vec_push
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_4:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	add_hide_set, .Lfunc_end0-add_hide_set
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym add_hide_set
	.addrsig_sym make_vector
	.addrsig_sym vec_len
	.addrsig_sym copy_token
	.addrsig_sym vec_get
	.addrsig_sym set_union
	.addrsig_sym vec_push