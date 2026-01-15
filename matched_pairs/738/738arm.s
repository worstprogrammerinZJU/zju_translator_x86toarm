	.text
	.p2align	2                               // -- Begin function count_leading_ones
	.type	count_leading_ones,@function
count_leading_ones:                     // @count_leading_ones
// %bb.0:
	sub	sp, sp, #16
	strb	w0, [sp, #11]
	mov	w8, #7
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	tbnz	w8, #31, .LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #11]
	ldr	w10, [sp, #4]
	mov	w9, #1
	lsl	w9, w9, w10
	and	w8, w8, w9
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w9, [sp, #4]
	mov	w8, #7
	subs	w8, w8, w9
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_6:
	mov	w8, #8
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_7:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	count_leading_ones, .Lfunc_end0-count_leading_ones
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym count_leading_ones