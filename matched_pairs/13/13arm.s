	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function leaky_activate
.LCPI0_0:
	.xword	0x3fb999999999999a              // double 0.10000000000000001
	.text
	.p2align	2
	.type	leaky_activate,@function
leaky_activate:                         // @leaky_activate
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fcmp	s0, #0.0
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	s0, [sp, #12]
	fcvt	d0, s0
	str	d0, [sp]                        // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldr	s0, [sp, #12]
	fcvt	d1, s0
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	fmul	d0, d0, d1
	str	d0, [sp]                        // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	d0, [sp]                        // 8-byte Folded Reload
	fcvt	s0, d0
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	leaky_activate, .Lfunc_end0-leaky_activate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym leaky_activate