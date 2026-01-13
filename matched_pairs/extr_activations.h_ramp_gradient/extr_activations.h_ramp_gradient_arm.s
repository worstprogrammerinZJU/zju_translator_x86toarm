	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function ramp_gradient
.LCPI0_0:
	.xword	0x3fb999999999999a              // double 0.10000000000000001
	.text
	.p2align	2
	.type	ramp_gradient,@function
ramp_gradient:                          // @ramp_gradient
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fcmp	s0, #0.0
	cset	w8, gt
	and	w8, w8, #0x1
	scvtf	d0, w8
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fadd	d0, d0, d1
	fcvt	s0, d0
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	ramp_gradient, .Lfunc_end0-ramp_gradient
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ramp_gradient