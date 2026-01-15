	.text
	.globl	ms_init                         // -- Begin function ms_init
	.p2align	2
	.type	ms_init,@function
ms_init:                                // @ms_init
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #24]
	str	xzr, [x8, #24]
	ldr	x8, [sp, #24]
	str	xzr, [x8, #32]
	ldr	x8, [sp, #24]
	str	xzr, [x8, #40]
	ldr	x8, [sp, #24]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	str	x8, [x9, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ms_init, .Lfunc_end0-ms_init
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig