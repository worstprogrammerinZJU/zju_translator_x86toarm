	.text
	.globl	load_rle                        // -- Begin function load_rle
	.p2align	2
	.type	load_rle,@function
load_rle:                               // @load_rle
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	str	x1, [sp, #40]
	str	w2, [sp, #36]
	str	wzr, [sp, #32]
	str	wzr, [sp, #28]
	str	wzr, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #20]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #40]
	ldrsw	x10, [sp, #24]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #28]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #32]
	mov	w11, w10
	add	w11, w11, #1
	str	w11, [sp, #32]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #28]
	mov	w8, #1
	subs	w8, w8, w9
	str	w8, [sp, #28]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_1
.LBB0_8:
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	w8, [sp, #32]
	ldr	w9, [x10, #8]
	ldr	w11, [x10, #12]
	mul	w9, w9, w11
	ldr	w10, [x10, #16]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #28]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #32]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_9
.LBB0_12:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	load_rle, .Lfunc_end0-load_rle
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig