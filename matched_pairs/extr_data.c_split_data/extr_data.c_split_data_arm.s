	.text
	.globl	split_data                      // -- Begin function split_data
	.p2align	2
	.type	split_data,@function
split_data:                             // @split_data
// %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	stur	w2, [x29, #-8]
	mov	w0, #2
	mov	w1, #56
	bl	calloc
	mov	x8, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	stur	x8, [x29, #-16]
	ldur	w8, [x29, #-4]
	ldr	w9, [x0, #32]
	mul	w8, w8, w9
	ldur	w9, [x29, #-8]
	sdiv	w8, w8, w9
	stur	w8, [x29, #-24]
	ldur	w9, [x29, #-4]
	mov	w8, #1
	add	w9, w9, #1
	ldr	w10, [x0, #32]
	mul	w9, w9, w10
	ldur	w10, [x29, #-8]
	sdiv	w9, w9, w10
	stur	w9, [x29, #-28]
	str	w8, [sp, #32]
	str	w8, [sp, #88]
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	str	w8, [sp, #40]
	str	w8, [sp, #64]
	ldr	w8, [x0, #32]
	ldur	w9, [x29, #-28]
	ldur	w10, [x29, #-24]
	subs	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #96]
	str	w8, [sp, #120]
	ldr	w8, [x0, #48]
	str	w8, [sp, #80]
	str	w8, [sp, #136]
	ldr	w8, [x0, #24]
	str	w8, [sp, #56]
	str	w8, [sp, #112]
	ldr	w0, [sp, #120]
	mov	w1, #8
	str	w1, [sp, #28]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #28]                   // 4-byte Folded Reload
	str	x0, [sp, #128]
	ldr	w0, [sp, #64]
	bl	calloc
	ldr	w1, [sp, #28]                   // 4-byte Folded Reload
	str	x0, [sp, #72]
	ldr	w0, [sp, #96]
	bl	calloc
	ldr	w1, [sp, #28]                   // 4-byte Folded Reload
	str	x0, [sp, #104]
	ldr	w0, [sp, #40]
	bl	calloc
	str	x0, [sp, #48]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x9, [x8, #40]
	ldursw	x10, [x29, #-20]
	ldr	w9, [x9, x10, lsl #2]
	ldr	x10, [sp, #128]
	ldursw	x11, [x29, #-20]
	str	w9, [x10, x11, lsl #2]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-20]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #104]
	ldursw	x10, [x29, #-20]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_4:
	ldur	w8, [x29, #-24]
	stur	w8, [x29, #-20]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x9, [x8, #40]
	ldursw	x10, [x29, #-20]
	ldr	w9, [x9, x10, lsl #2]
	ldr	x10, [sp, #72]
	ldur	w11, [x29, #-20]
	ldur	w12, [x29, #-24]
	subs	w11, w11, w12
	str	w9, [x10, w11, sxtw #2]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-20]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #48]
	ldur	w10, [x29, #-20]
	ldur	w11, [x29, #-24]
	subs	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_5
.LBB0_8:
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-20]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	ldr	w9, [x9, #32]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x9, [x8, #40]
	ldursw	x10, [x29, #-20]
	ldr	w9, [x9, x10, lsl #2]
	ldr	x10, [sp, #128]
	ldur	w11, [x29, #-20]
	ldur	w12, [x29, #-28]
	ldur	w13, [x29, #-24]
	subs	w12, w12, w13
	subs	w11, w11, w12
	str	w9, [x10, w11, sxtw #2]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-20]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #104]
	ldur	w10, [x29, #-20]
	ldur	w11, [x29, #-28]
	ldur	w12, [x29, #-24]
	subs	w11, w11, w12
	subs	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_9
.LBB0_12:
	ldur	x0, [x29, #-16]
	add	x1, sp, #88
	mov	x2, #56
	str	x2, [sp, #8]                    // 8-byte Folded Spill
	bl	memcpy
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x8, #56
	add	x1, sp, #32
	bl	memcpy
	ldur	x0, [x29, #-16]
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	ret
.Lfunc_end0:
	.size	split_data, .Lfunc_end0-split_data
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc