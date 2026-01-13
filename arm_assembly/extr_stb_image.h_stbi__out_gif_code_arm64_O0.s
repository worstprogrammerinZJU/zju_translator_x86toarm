	.text
	.p2align	2                               // -- Begin function stbi__out_gif_code
	.type	stbi__out_gif_code,@function
stbi__out_gif_code:                     // @stbi__out_gif_code
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #64]
	ldur	x9, [x29, #-16]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	tbnz	x8, #63, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #64]
	ldur	x9, [x29, #-16]
	lsl	x9, x9, #4
	ldr	x1, [x8, x9]
	bl	stbi__out_gif_code
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.lt	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_13
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9]
	add	w8, w8, w9
	str	w8, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #24]
	ldur	x8, [x29, #-8]
	ldr	x9, [x8, #24]
	ldr	w8, [sp, #12]
	mov	w10, #4
	sdiv	w10, w8, w10
	mov	w8, #1
	str	w8, [x9, w10, sxtw #2]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #64]
	ldur	x10, [x29, #-16]
	add	x9, x9, x10, lsl #4
	ldr	w9, [x9, #8]
	lsl	w9, w9, #2
	add	x8, x8, w9, sxtw #2
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #12]
	subs	w8, w8, #128
	b.le	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #24]
	str	w8, [x9, #4]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #12]
	ldr	x9, [sp, #24]
	str	w8, [x9, #12]
	b	.LBB0_6
.LBB0_6:
	ldur	x9, [x29, #-8]
	ldr	w8, [x9, #8]
	add	w8, w8, #4
	str	w8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #40]
	subs	w8, w8, w9
	b.lt	.LBB0_13
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #44]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	w10, [x8, #48]
	ldur	x9, [x29, #-8]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_8
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	w9, [x8]
	ldur	x8, [x29, #-8]
	ldr	w10, [x8, #4]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.lt	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #52]
	subs	w8, w8, #0
	cset	w8, gt
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w9, [x8, #52]
	mov	w8, #1
	lsl	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #56]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #48]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #60]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #48]
	add	w8, w8, w9, asr #1
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldur	x9, [x29, #-8]
	ldr	w8, [x9, #52]
	subs	w8, w8, #1
	str	w8, [x9, #52]
	b	.LBB0_8
.LBB0_12:
	b	.LBB0_13
.LBB0_13:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__out_gif_code, .Lfunc_end0-stbi__out_gif_code
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__out_gif_code