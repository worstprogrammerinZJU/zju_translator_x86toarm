	.text
	.globl	max_index                       // -- Begin function max_index
	.p2align	2
	.type	max_index,@function
max_index:                              // @max_index
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	b.gt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #-1
	str	w8, [sp, #28]
	b	.LBB0_9
.LBB0_2:
	str	wzr, [sp, #4]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	str	w8, [sp]
	mov	w8, #1
	str	w8, [sp, #8]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #8]
	ldr	s0, [x8, x9, lsl #2]
	ldr	s1, [sp]
	fcmp	s0, s1
	b.le	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #8]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp]
	ldr	w8, [sp, #8]
	str	w8, [sp, #4]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_3
.LBB0_8:
	ldr	w8, [sp, #4]
	str	w8, [sp, #28]
	b	.LBB0_9
.LBB0_9:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	max_index, .Lfunc_end0-max_index
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig