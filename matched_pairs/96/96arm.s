	.text
	.globl	softmax_cpu                     // -- Begin function softmax_cpu
	.p2align	2
	.type	softmax_cpu,@function
softmax_cpu:                            // @softmax_cpu
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	stur	w4, [x29, #-24]
	stur	w5, [x29, #-28]
	str	w6, [sp, #32]
	str	s0, [sp, #28]
	str	x7, [sp, #16]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #8]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	x8, [x29, #-8]
	ldr	w9, [sp, #8]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldr	w9, [sp, #12]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw #2
	ldur	w1, [x29, #-12]
	ldr	s0, [sp, #28]
	ldr	w2, [sp, #32]
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #8]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldr	w9, [sp, #12]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	add	x3, x8, w9, sxtw #2
	bl	softmax
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_8:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	softmax_cpu, .Lfunc_end0-softmax_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym softmax