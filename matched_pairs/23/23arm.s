	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function plse_activate
.LCPI0_0:
	.xword	0x3f847ae147ae147b              // double 0.01
	.text
	.p2align	2
	.type	plse_activate,@function
plse_activate:                          // @plse_activate
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #8]
	ldr	s0, [sp, #8]
	fmov	s1, #-4.00000000
	fcmp	s0, s1
	b.pl	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	s0, [sp, #8]
	fmov	s1, #4.00000000
	fadd	s0, s0, s1
	fcvt	d1, s0
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	fmul	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #12]
	b	.LBB0_5
.LBB0_2:
	ldr	s0, [sp, #8]
	fmov	s1, #4.00000000
	fcmp	s0, s1
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	s0, [sp, #8]
	fmov	s1, #4.00000000
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
	ldr	s0, [sp, #8]
	fcvt	d1, s0
	fmov	d2, #0.50000000
	fmov	d0, #0.12500000
	fmadd	d0, d0, d1, d2
	fcvt	s0, d0
	str	s0, [sp, #12]
	b	.LBB0_5
.LBB0_5:
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	plse_activate, .Lfunc_end0-plse_activate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym plse_activate