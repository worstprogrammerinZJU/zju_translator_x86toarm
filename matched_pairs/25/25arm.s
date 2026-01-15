	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function ramp_activate
.LCPI0_0:
	.xword	0x3fb999999999999a              // double 0.10000000000000001
	.text
	.p2align	2
	.type	ramp_activate,@function
ramp_activate:                          // @ramp_activate
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	ldr	s1, [sp, #12]
	fcmp	s1, #0.0
	cset	w8, gt
	and	w8, w8, #0x1
	scvtf	s1, w8
	fmul	s0, s0, s1
	fcvt	d2, s0
	ldr	s0, [sp, #12]
	fcvt	d1, s0
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	fmadd	d0, d0, d1, d2
	fcvt	s0, d0
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	ramp_activate, .Lfunc_end0-ramp_activate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ramp_activate