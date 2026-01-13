	.text
	.globl	l2_cpu                          // -- Begin function l2_cpu
	.p2align	2
	.type	l2_cpu,@function
l2_cpu:                                 // @l2_cpu
// %bb.0:
	sub	sp, sp, #48
	str	w0, [sp, #44]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	x4, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #4]
	ldr	s0, [x8, x9, lsl #2]
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #4]
	ldr	s1, [x8, x9, lsl #2]
	fsub	s0, s0, s1
	str	s0, [sp]
	ldr	s0, [sp]
	ldr	s1, [sp]
	fmul	s0, s0, s1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	str	s0, [x8, x9, lsl #2]
	ldr	w8, [sp]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #4]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	l2_cpu, .Lfunc_end0-l2_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig