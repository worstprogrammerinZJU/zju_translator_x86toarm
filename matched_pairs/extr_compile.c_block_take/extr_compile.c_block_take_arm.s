	.text
	.p2align	2                               // -- Begin function block_take
	.type	block_take,@function
block_take:                             // @block_take
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	b	.LBB0_6
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #16]
	str	x8, [x9, #8]
	ldr	x8, [sp, #8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp, #16]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #8]
	ldr	x8, [sp, #16]
	str	xzr, [x8]
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #8]
	str	x8, [sp, #24]
	b	.LBB0_6
.LBB0_6:
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	block_take, .Lfunc_end0-block_take
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_take