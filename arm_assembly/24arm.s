	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function plse_gradient
.LCPI0_0:
	.xword	0x3f847ae147ae147b              // double 0.01
	.text
	.p2align	2
	.type	plse_gradient,@function
plse_gradient:                          // @plse_gradient
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	mov	w8, #1
	fcmp	s0, #0.0
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.mi	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	s0, [sp, #12]
	fmov	s1, #1.00000000
	fcmp	s0, s1
	cset	w8, gt
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	fmov	d1, #0.12500000
	adrp	x9, .LCPI0_0
	ldr	d0, [x9, :lo12:.LCPI0_0]
	ands	w8, w8, #0x1
	fcsel	d0, d0, d1, ne
	fcvt	s0, d0
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	plse_gradient, .Lfunc_end0-plse_gradient
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym plse_gradient