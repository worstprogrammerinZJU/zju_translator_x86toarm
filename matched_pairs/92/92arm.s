	.text
	.globl	scal_cpu                        // -- Begin function scal_cpu
	.p2align	2
	.type	scal_cpu,@function
scal_cpu:                               // @scal_cpu
// %bb.0:
	sub	sp, sp, #32
	str	w0, [sp, #28]
	str	s0, [sp, #24]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s1, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #12]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldr	s0, [x8]
	fmul	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	scal_cpu, .Lfunc_end0-scal_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig