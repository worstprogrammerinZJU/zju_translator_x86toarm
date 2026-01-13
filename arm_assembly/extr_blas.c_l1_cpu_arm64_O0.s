	.text
	.globl	l1_cpu                          // -- Begin function l1_cpu
	.p2align	2
	.type	l1_cpu,@function
l1_cpu:                                 // @l1_cpu
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	x4, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #4]
	ldr	s0, [x8, x9, lsl #2]
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #4]
	ldr	s1, [x8, x9, lsl #2]
	fsub	s0, s0, s1
	str	s0, [sp]
	ldr	s0, [sp]
	bl	fabs
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	str	s0, [x8, x9, lsl #2]
	ldr	s0, [sp]
	mov	w8, #-1
	fcmp	s0, #0.0
	csinc	w8, w8, wzr, le
	scvtf	s0, w8
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	l1_cpu, .Lfunc_end0-l1_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fabs