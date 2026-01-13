	.text
	.p2align	2                               // -- Begin function unhex4
	.type	unhex4,@function
unhex4:                                 // @unhex4
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	str	wzr, [sp, #12]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #4
	b.ge	.LBB0_16
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	add	x9, x8, #1
	str	x9, [sp, #16]
	ldrb	w8, [x8]
	strb	w8, [sp, #7]
	ldrb	w9, [sp, #7]
	mov	w8, #48
	subs	w8, w8, w9
	b.gt	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #7]
	subs	w8, w8, #57
	b.gt	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #7]
	subs	w8, w8, #48
	str	w8, [sp]
	b	.LBB0_14
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldrb	w9, [sp, #7]
	mov	w8, #97
	subs	w8, w8, w9
	b.gt	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #7]
	subs	w8, w8, #102
	b.gt	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #7]
	subs	w8, w8, #97
	add	w8, w8, #10
	str	w8, [sp]
	b	.LBB0_13
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldrb	w9, [sp, #7]
	mov	w8, #65
	subs	w8, w8, w9
	b.gt	.LBB0_11
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #7]
	subs	w8, w8, #70
	b.gt	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #7]
	subs	w8, w8, #65
	add	w8, w8, #10
	str	w8, [sp]
	b	.LBB0_12
.LBB0_11:
	mov	w8, #-1
	str	w8, [sp, #28]
	b	.LBB0_17
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	lsl	w8, w8, #4
	str	w8, [sp, #12]
	ldr	w9, [sp]
	ldr	w8, [sp, #12]
	orr	w8, w8, w9
	str	w8, [sp, #12]
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_16:
	ldr	w8, [sp, #12]
	str	w8, [sp, #28]
	b	.LBB0_17
.LBB0_17:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	unhex4, .Lfunc_end0-unhex4
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym unhex4