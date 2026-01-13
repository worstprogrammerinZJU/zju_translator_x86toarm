	.text
	.globl	find_float_arg                  // -- Begin function find_float_arg
	.p2align	2
	.type	find_float_arg,@function
find_float_arg:                         // @find_float_arg
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	s0, [sp, #4]
	str	wzr, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp]
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp]
	ldr	x8, [x8, x9, lsl #3]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp]
	ldr	x0, [x8, x9, lsl #3]
	ldr	x1, [sp, #8]
	bl	strcmp
	cbnz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #16]
	ldr	w9, [sp]
	add	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	bl	atof
	str	s0, [sp, #4]
	ldur	w0, [x29, #-4]
	ldr	x1, [sp, #16]
	ldr	w2, [sp]
	bl	del_arg
	ldur	w0, [x29, #-4]
	ldr	x1, [sp, #16]
	ldr	w2, [sp]
	bl	del_arg
	b	.LBB0_8
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	.LBB0_1
.LBB0_8:
	ldr	s0, [sp, #4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	find_float_arg, .Lfunc_end0-find_float_arg
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym atof
	.addrsig_sym del_arg