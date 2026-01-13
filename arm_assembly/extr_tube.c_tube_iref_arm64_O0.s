	.text
	.globl	tube_iref                       // -- Begin function tube_iref
	.p2align	2
	.type	tube_iref,@function
tube_iref:                              // @tube_iref
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	b	.LBB0_3
.LBB0_3:
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	tube_iref, .Lfunc_end0-tube_iref
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig