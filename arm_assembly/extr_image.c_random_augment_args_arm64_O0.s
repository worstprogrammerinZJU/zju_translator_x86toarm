	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function random_augment_args
.LCPI0_0:
	.xword	0x4076800000000000              // double 360
	.text
	.globl	random_augment_args
	.p2align	2
	.type	random_augment_args,@function
random_augment_args:                    // @random_augment_args
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	stur	s0, [x29, #-8]
	stur	s1, [x29, #-4]
	stur	s2, [x29, #-12]
	stur	s3, [x29, #-16]
	stur	w0, [x29, #-20]
	stur	w1, [x29, #-24]
	stur	w2, [x29, #-28]
	stur	w3, [x29, #-32]
	movi	v0.2d, #0000000000000000
	str	q0, [x8]
	str	q0, [x8, #16]
	ldur	s0, [x29, #-16]
	bl	rand_scale
	stur	s0, [x29, #-16]
	ldur	w0, [x29, #-20]
	ldur	w1, [x29, #-24]
	bl	rand_int
	stur	w0, [x29, #-36]
	ldur	s0, [x29, #-8]
	ldur	s1, [x29, #-4]
	ldur	s2, [x29, #-16]
	fmul	s1, s1, s2
	fcmp	s0, s1
	b.pl	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	s0, [x29, #-8]
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldur	s0, [x29, #-4]
	ldur	s1, [x29, #-16]
	fmul	s0, s0, s1
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	s0, [sp, #12]                   // 4-byte Folded Reload
	fcvtzs	w8, s0
	str	w8, [sp, #40]
	ldur	s0, [x29, #-36]
	scvtf	s0, s0
	ldr	s1, [sp, #40]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	str	s0, [sp, #36]
	ldur	s0, [x29, #-12]
	fneg	s0, s0
	ldur	s1, [x29, #-12]
	bl	rand_uniform
	adrp	x8, TWO_PI
	ldr	w8, [x8, :lo12:TWO_PI]
	mul	w8, w0, w8
	scvtf	d0, w8
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fdiv	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #32]
	ldur	s0, [x29, #-4]
	ldr	s1, [sp, #36]
	fmul	s0, s0, s1
	ldur	s1, [x29, #-16]
	fdiv	s0, s0, s1
	ldur	s1, [x29, #-28]
	scvtf	s1, s1
	fsub	s0, s0, s1
	fcvt	d0, s0
	fmov	d1, #2.00000000
	fdiv	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #28]
	ldur	s0, [x29, #-8]
	ldr	s2, [sp, #36]
	ldur	s3, [x29, #-28]
	scvtf	s3, s3
	fnmsub	s0, s0, s2, s3
	fcvt	d0, s0
	fdiv	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #24]
	ldr	s0, [sp, #28]
	fneg	s0, s0
	ldr	s1, [sp, #28]
	bl	rand_uniform
	scvtf	s0, w0
	str	s0, [sp, #28]
	ldr	s0, [sp, #24]
	fneg	s0, s0
	ldr	s1, [sp, #24]
	bl	rand_uniform
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	scvtf	s0, w0
	str	s0, [sp, #24]
	ldr	w8, [sp, #32]
	str	w8, [x9]
	ldr	w8, [sp, #36]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-28]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-32]
	str	w8, [x9, #12]
	ldr	w8, [sp, #28]
	str	w8, [x9, #16]
	ldr	w8, [sp, #24]
	str	w8, [x9, #20]
	ldur	w8, [x29, #-16]
	str	w8, [x9, #24]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	random_augment_args, .Lfunc_end0-random_augment_args
                                        // -- End function
	.type	TWO_PI,@object                  // @TWO_PI
	.bss
	.globl	TWO_PI
	.p2align	2
TWO_PI:
	.word	0                               // 0x0
	.size	TWO_PI, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand_scale
	.addrsig_sym rand_int
	.addrsig_sym rand_uniform
	.addrsig_sym TWO_PI