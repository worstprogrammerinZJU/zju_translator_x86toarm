	.text
	.globl	flatten                         // -- Begin function flatten
	.p2align	2
	.type	flatten,@function
flatten:                                // @flatten
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	stur	w4, [x29, #-24]
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-20]
	mul	w0, w8, w9
	mov	w1, #4
	bl	calloc
	str	x0, [sp, #32]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #24]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #28]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-12]
	mul	w8, w8, w9
	ldr	w9, [sp, #24]
	ldur	w10, [x29, #-12]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-12]
	mul	w8, w8, w9
	ldr	w9, [sp, #28]
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	str	w8, [sp, #12]
	ldur	w8, [x29, #-24]
	cbz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_9
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #16]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=3
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_5
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_3
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_15:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #32]
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-20]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w2, w8
	bl	memcpy
	ldr	x0, [sp, #32]
	bl	free
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	flatten, .Lfunc_end0-flatten
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym memcpy
	.addrsig_sym free