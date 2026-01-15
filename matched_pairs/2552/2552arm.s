	.text
	.globl	count_fields                    // -- Begin function count_fields
	.p2align	2
	.type	count_fields,@function
count_fields:                           // @count_fields
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	wzr, [sp, #20]
	str	wzr, [sp, #16]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	cbnz	w8, .LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #16]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	subs	w8, w8, #44
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	cbz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_7:
	ldr	w0, [sp, #20]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	count_fields, .Lfunc_end0-count_fields
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig