	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function selu_gradient
.LCPI0_0:
	.xword	0x3ff0cfaacd9e83e4              // double 1.0507
.LCPI0_1:
	.xword	0x3ffc20e55d92575b              // double 1.75803124
	.text
	.p2align	2
	.type	selu_gradient,@function
selu_gradient:                          // @selu_gradient
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fcmp	s0, #0.0
	cset	w8, ge
	and	w8, w8, #0x1
	scvtf	d0, w8
	ldr	s1, [sp, #12]
	fcmp	s1, #0.0
	cset	w8, mi
	and	w8, w8, #0x1
	scvtf	d1, w8
	ldr	s2, [sp, #12]
	fcvt	d2, s2
	adrp	x8, .LCPI0_1
	ldr	d3, [x8, :lo12:.LCPI0_1]
	fadd	d2, d2, d3
	fmul	d2, d1, d2
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fmadd	d0, d0, d1, d2
	fcvt	s0, d0
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	selu_gradient, .Lfunc_end0-selu_gradient
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym selu_gradient