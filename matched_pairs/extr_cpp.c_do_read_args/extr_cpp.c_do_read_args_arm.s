	.text
	.p2align	2                               // -- Begin function do_read_args
	.type	do_read_args,@function
do_read_args:                           // @do_read_args
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	bl	make_vector
	stur	x0, [x29, #-24]
	stur	wzr, [x29, #-28]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	cbnz	w8, .LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	mov	w9, #0
	str	w9, [sp, #28]                   // 4-byte Folded Spill
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-24]
	bl	vec_len
	add	w8, w0, #1
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, eq
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]                   // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #32]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldr	w2, [sp, #32]
	sub	x1, x29, #28
	bl	read_one_arg
	mov	x1, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_1
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_8
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-24]
	bl	vec_len
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w8, w8, #1
	subs	w8, w0, w8
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	bl	make_vector
	mov	x1, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	do_read_args, .Lfunc_end0-do_read_args
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_read_args
	.addrsig_sym make_vector
	.addrsig_sym vec_len
	.addrsig_sym vec_push
	.addrsig_sym read_one_arg