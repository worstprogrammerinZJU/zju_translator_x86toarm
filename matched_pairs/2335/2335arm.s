	.text
	.globl	reverse                         // -- Begin function reverse
	.p2align	2
	.type	reverse,@function
reverse:                                // @reverse
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	ldr	x8, [sp, #40]
	str	x8, [sp, #24]
	ldr	x8, [sp, #32]
	subs	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.hs	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	strb	w8, [sp, #15]
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	ldr	x9, [sp, #16]
	strb	w8, [x9]
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #24]
	strb	w8, [x9]
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	ldr	x8, [sp, #16]
	subs	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_3:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	reverse, .Lfunc_end0-reverse
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig