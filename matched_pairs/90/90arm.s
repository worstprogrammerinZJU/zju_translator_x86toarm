	.text
	.globl	pow_cpu                         // -- Begin function pow_cpu
	.p2align	2
	.type	pow_cpu,@function
pow_cpu:                                // @pow_cpu
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	s0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	x3, [sp, #16]
	str	w4, [sp, #12]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #8]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	ldur	s1, [x29, #-8]
	bl	pow
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #12]
	mul	w9, w9, w10
	str	s0, [x8, w9, sxtw #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	pow_cpu, .Lfunc_end0-pow_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pow