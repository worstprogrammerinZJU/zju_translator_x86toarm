	.text
	.p2align	2                               // -- Begin function optimize_code
	.type	optimize_code,@function
optimize_code:                          // @optimize_code
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	ldr	x10, [sp, #8]
	ldrsw	x10, [x10, #8]
	add	x9, x9, x10, lsl #2
	subs	x8, x8, x9
	b.hs	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	ldr	w8, [x8]
	subs	w8, w8, #128
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp]
	bl	tail_call_analyze
	ldr	x8, [sp]
	str	w0, [x8]
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp]
	bl	bytecode_operation_length
	ldr	x8, [sp]
	add	x8, x8, w0, sxtw #2
	str	x8, [sp]
	b	.LBB0_1
.LBB0_6:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	optimize_code, .Lfunc_end0-optimize_code
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optimize_code
	.addrsig_sym tail_call_analyze
	.addrsig_sym bytecode_operation_length