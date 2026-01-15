	.text
	.globl	dot_cpu                         // -- Begin function dot_cpu
	.p2align	2
	.type	dot_cpu,@function
dot_cpu:                                // @dot_cpu
// %bb.0:
	sub	sp, sp, #48
	str	w0, [sp, #44]
	str	x1, [sp, #32]
	str	w2, [sp, #28]
	str	x3, [sp, #16]
	str	w4, [sp, #12]
	movi	d0, #0000000000000000
	str	s0, [sp, #4]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #28]
	mul	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #12]
	mul	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	ldr	s2, [sp, #4]
	fmadd	s0, s0, s1, s2
	str	s0, [sp, #4]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	ldr	s0, [sp, #4]
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	dot_cpu, .Lfunc_end0-dot_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig