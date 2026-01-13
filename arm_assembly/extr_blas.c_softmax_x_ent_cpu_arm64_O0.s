	.text
	.globl	softmax_x_ent_cpu               // -- Begin function softmax_x_ent_cpu
	.p2align	2
	.type	softmax_x_ent_cpu,@function
softmax_x_ent_cpu:                      // @softmax_x_ent_cpu
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	x4, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #20]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #16]
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #20]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #12]
	ldr	s0, [sp, #16]
	fcmp	s0, #0.0
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #12]
	bl	log
	fneg	s0, s0
	str	s0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	movi	d0, #0000000000000000
	str	s0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #8]                    // 4-byte Folded Reload
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	str	s0, [x8, x9, lsl #2]
	ldr	s0, [sp, #16]
	ldr	s1, [sp, #12]
	fsub	s0, s0, s1
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #20]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_7:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	softmax_x_ent_cpu, .Lfunc_end0-softmax_x_ent_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym log