	.text
	.globl	randomize_data                  // -- Begin function randomize_data
	.p2align	2
	.type	randomize_data,@function
randomize_data:                         // @randomize_data
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldr	w8, [x0, #8]
	subs	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #0
	b.le	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	bl	rand
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w10, [x29, #-4]
	sdiv	w8, w0, w10
	mul	w8, w8, w10
	subs	w8, w0, w8
	stur	w8, [x29, #-8]
	ldr	x8, [x9, #16]
	ldursw	x10, [x29, #-8]
	ldr	x8, [x8, x10, lsl #3]
	str	x8, [sp, #16]
	ldr	x8, [x9, #16]
	ldursw	x10, [x29, #-4]
	ldr	x8, [x8, x10, lsl #3]
	ldr	x10, [x9, #16]
	ldursw	x11, [x29, #-8]
	str	x8, [x10, x11, lsl #3]
	ldr	x8, [sp, #16]
	ldr	x10, [x9, #16]
	ldursw	x11, [x29, #-4]
	str	x8, [x10, x11, lsl #3]
	ldr	x8, [x9]
	ldursw	x10, [x29, #-8]
	ldr	x8, [x8, x10, lsl #3]
	str	x8, [sp, #16]
	ldr	x8, [x9]
	ldursw	x10, [x29, #-4]
	ldr	x8, [x8, x10, lsl #3]
	ldr	x10, [x9]
	ldursw	x11, [x29, #-8]
	str	x8, [x10, x11, lsl #3]
	ldr	x8, [sp, #16]
	ldr	x9, [x9]
	ldursw	x10, [x29, #-4]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	randomize_data, .Lfunc_end0-randomize_data
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand