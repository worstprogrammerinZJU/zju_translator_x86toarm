	.text
	.p2align	2                               // -- Begin function yystpcpy
	.type	yystpcpy,@function
yystpcpy:                               // @yystpcpy
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	add	x9, x8, #1
	str	x9, [sp]
	ldrb	w8, [x8]
	ldr	x9, [sp, #8]
	add	x10, x9, #1
	str	x10, [sp, #8]
	strb	w8, [x9]
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_3:
	ldr	x8, [sp, #8]
	subs	x0, x8, #1
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	yystpcpy, .Lfunc_end0-yystpcpy
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yystpcpy