	.text
	.globl	int_index                       // -- Begin function int_index
	.p2align	2
	.type	int_index,@function
int_index:                              // @int_index
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	str	w2, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #4]
	str	w8, [sp, #28]
	b	.LBB0_7
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_6:
	mov	w8, #-1
	str	w8, [sp, #28]
	b	.LBB0_7
.LBB0_7:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	int_index, .Lfunc_end0-int_index
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig