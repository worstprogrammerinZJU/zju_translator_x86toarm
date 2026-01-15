	.text
	.globl	find_char_arg                   // -- Begin function find_char_arg
	.p2align	2
	.type	find_char_arg,@function
find_char_arg:                          // @find_char_arg
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #12]
	ldr	x0, [x8, x9, lsl #3]
	ldr	x1, [sp, #24]
	bl	strcmp
	cbnz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #12]
	add	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	str	x8, [sp, #16]
	ldur	w0, [x29, #-4]
	ldur	x1, [x29, #-16]
	ldr	w2, [sp, #12]
	bl	del_arg
	ldur	w0, [x29, #-4]
	ldur	x1, [x29, #-16]
	ldr	w2, [sp, #12]
	bl	del_arg
	b	.LBB0_8
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_8:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	find_char_arg, .Lfunc_end0-find_char_arg
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym del_arg