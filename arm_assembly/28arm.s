	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function relie_gradient
.LCPI0_0:
	.xword	0x3f847ae147ae147b              // double 0.01
	.text
	.p2align	2
	.type	relie_gradient,@function
relie_gradient:                         // @relie_gradient
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s2, [sp, #12]
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fmov	d0, #1.00000000
	fcmp	s2, #0.0
	fcsel	d0, d0, d1, gt
	fcvt	s0, d0
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	relie_gradient, .Lfunc_end0-relie_gradient
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym relie_gradient