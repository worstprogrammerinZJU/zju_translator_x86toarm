	.text
	.globl	fileincref                      // -- Begin function fileincref
	.p2align	2
	.type	fileincref,@function
fileincref:                             // @fileincref
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
	.size	fileincref, .Lfunc_end0-fileincref
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig