	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function recursive
.LCPI0_0:
	.xword	0x400aa3d70a3d70a4              // double 3.3300000000000001
	.text
	.globl	recursive
	.p2align	2
	.type	recursive,@function
recursive:                              // @recursive
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	d0, [sp]
	ldr	d0, [sp]
	fmov	d1, #10.00000000
	fcmp	d0, d1
	b.pl	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
	str	x8, [sp, #8]
	b	.LBB0_3
.LBB0_2:
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	bl	recursive
	str	d0, [sp, #8]
	b	.LBB0_3
.LBB0_3:
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	recursive, .Lfunc_end0-recursive
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym recursive