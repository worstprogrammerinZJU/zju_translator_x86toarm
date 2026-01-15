	.text
	.globl	sample_array                    // -- Begin function sample_array
	.p2align	2
	.type	sample_array,@function
sample_array:                           // @sample_array
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #12]
	bl	sum_array
	str	s0, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #12]
	ldr	s0, [sp, #8]
	fcvt	d1, s0
	fmov	d0, #1.00000000
	fdiv	d0, d0, d1
	fcvtzs	w2, d0
	bl	scale_array
	mov	w0, wzr
	mov	w1, #1
	bl	rand_uniform
	str	s0, [sp, #4]
	str	wzr, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #4]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp]
	ldr	s1, [x8, x9, lsl #2]
	fsub	s0, s0, s1
	str	s0, [sp, #4]
	ldr	s0, [sp, #4]
	fcmp	s0, #0.0
	b.hi	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp]
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	.LBB0_1
.LBB0_6:
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	sample_array, .Lfunc_end0-sample_array
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sum_array
	.addrsig_sym scale_array
	.addrsig_sym rand_uniform