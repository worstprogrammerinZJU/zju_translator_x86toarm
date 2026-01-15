	.text
	.globl	binarize_cpu                    // -- Begin function binarize_cpu
	.p2align	2
	.type	binarize_cpu,@function
binarize_cpu:                           // @binarize_cpu
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	str	x2, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #4]
	ldr	s0, [x8, x9, lsl #2]
	mov	w8, #-1
	fcmp	s0, #0.0
	csinc	w8, w8, wzr, le
	scvtf	s0, w8
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	binarize_cpu, .Lfunc_end0-binarize_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig