	.text
	.globl	ms_contains                     // -- Begin function ms_contains
	.p2align	2
	.type	ms_contains,@function
ms_contains:                            // @ms_contains
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	str	xzr, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.hs	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	str	w8, [sp, #28]
	b	.LBB0_7
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	add	x8, x8, #1
	str	x8, [sp]
	b	.LBB0_1
.LBB0_6:
	str	wzr, [sp, #28]
	b	.LBB0_7
.LBB0_7:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ms_contains, .Lfunc_end0-ms_contains
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig