	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function lhtan_activate
.LCPI0_0:
	.xword	0x3f50624dd2f1a9fc              // double 0.001
	.text
	.p2align	2
	.type	lhtan_activate,@function
lhtan_activate:                         // @lhtan_activate
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #8]
	ldr	s0, [sp, #8]
	fcmp	s0, #0.0
	b.pl	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	s0, [sp, #8]
	fcvt	d1, s0
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	fmul	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #12]
	b	.LBB0_5
.LBB0_2:
	ldr	s0, [sp, #8]
	fmov	s1, #1.00000000
	fcmp	s0, s1
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	s0, [sp, #8]
	fmov	s1, #1.00000000
	fsub	s0, s0, s1
	fcvt	d1, s0
	fmov	d2, #1.00000000
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	fmadd	d0, d0, d1, d2
	fcvt	s0, d0
	str	s0, [sp, #12]
	b	.LBB0_5
.LBB0_4:
	ldr	w8, [sp, #8]
	str	w8, [sp, #12]
	b	.LBB0_5
.LBB0_5:
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	lhtan_activate, .Lfunc_end0-lhtan_activate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lhtan_activate