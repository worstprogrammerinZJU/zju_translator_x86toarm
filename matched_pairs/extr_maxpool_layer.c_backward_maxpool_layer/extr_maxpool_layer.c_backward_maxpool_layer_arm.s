	.text
	.globl	backward_maxpool_layer          // -- Begin function backward_maxpool_layer
	.p2align	2
	.type	backward_maxpool_layer,@function
backward_maxpool_layer:                 // @backward_maxpool_layer
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	str	x1, [sp, #40]
	ldr	w8, [x0]
	str	w8, [sp, #32]
	ldr	w8, [x0, #4]
	str	w8, [sp, #28]
	ldr	w8, [x0, #8]
	str	w8, [sp, #24]
	str	wzr, [sp, #36]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #32]
	ldr	w11, [sp, #28]
	mul	w9, w9, w11
	ldr	w11, [sp, #24]
	mul	w9, w9, w11
	ldr	w10, [x10, #12]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [x8, #16]
	ldrsw	x10, [sp, #36]
	ldr	w9, [x9, x10, lsl #2]
	str	w9, [sp, #20]
	ldr	x8, [x8, #24]
	ldrsw	x9, [sp, #36]
	ldr	x10, [x8, x9, lsl #3]
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #20]
	add	x9, x8, x9, lsl #2
	ldrsw	x8, [x9]
	add	x8, x8, x10
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	backward_maxpool_layer, .Lfunc_end0-backward_maxpool_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig