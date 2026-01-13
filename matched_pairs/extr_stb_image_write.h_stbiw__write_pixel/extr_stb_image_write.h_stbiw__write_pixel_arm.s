	.text
	.p2align	2                               // -- Begin function stbiw__write_pixel
	.type	stbiw__write_pixel,@function
stbiw__write_pixel:                     // @stbiw__write_pixel
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	str	w4, [sp, #24]
	str	x5, [sp, #16]
	adrp	x8, .L__const.stbiw__write_pixel.bg
	add	x8, x8, :lo12:.L__const.stbiw__write_pixel.bg
	ldrh	w9, [x8]
	strh	w9, [sp, #12]
	ldrb	w8, [x8, #2]
	strb	w8, [sp, #14]
	ldur	w8, [x29, #-20]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	w0, [x9]
	ldr	x9, [sp, #16]
	ldur	w10, [x29, #-16]
	mov	w2, #1
	subs	w10, w10, #1
	add	x1, x9, w10, sxtw
	blr	x8
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-16]
	str	w8, [sp]                        // 4-byte Folded Spill
	subs	w8, w8, #1
	subs	w8, w8, #1
	b.ls	.LBB0_5
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	subs	w8, w8, #3
	b.eq	.LBB0_16
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	subs	w8, w8, #4
	b.eq	.LBB0_9
	b	.LBB0_17
.LBB0_5:
	ldr	w8, [sp, #24]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldrb	w1, [x8]
	ldr	x8, [sp, #16]
	ldrb	w2, [x8]
	ldr	x8, [sp, #16]
	ldrb	w3, [x8]
	bl	stbiw__write3
	b	.LBB0_8
.LBB0_7:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	w0, [x9]
	ldr	x1, [sp, #16]
	mov	w2, #1
	blr	x8
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_17
.LBB0_9:
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB0_15
	b	.LBB0_10
.LBB0_10:
	str	wzr, [sp, #4]
	b	.LBB0_11
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #3
	b.ge	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	ldrsw	x8, [sp, #4]
	add	x10, sp, #12
	ldrb	w8, [x10, x8]
	ldr	x9, [sp, #16]
	ldrsw	x11, [sp, #4]
	ldrb	w9, [x9, x11]
	ldrsw	x11, [sp, #4]
	ldrb	w10, [x10, x11]
	subs	w9, w9, w10
	ldr	x10, [sp, #16]
	ldrb	w10, [x10, #3]
	mul	w9, w9, w10
	mov	w10, #255
	sdiv	w9, w9, w10
	add	w8, w8, w9
	ldrsw	x10, [sp, #4]
	add	x9, sp, #9
	strb	w8, [x9, x10]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_11
.LBB0_14:
	ldur	x0, [x29, #-8]
	ldur	w9, [x29, #-12]
	mov	w8, #1
	subs	w9, w8, w9
	add	x8, sp, #9
	ldrb	w1, [x8, w9, sxtw]
	ldrb	w2, [sp, #10]
	ldur	w9, [x29, #-12]
	add	w9, w9, #1
	ldrb	w3, [x8, w9, sxtw]
	bl	stbiw__write3
	b	.LBB0_17
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldur	w10, [x29, #-12]
	mov	w9, #1
	subs	w9, w9, w10
	ldrb	w1, [x8, w9, sxtw]
	ldr	x8, [sp, #16]
	ldrb	w2, [x8, #1]
	ldr	x8, [sp, #16]
	ldur	w9, [x29, #-12]
	add	w9, w9, #1
	ldrb	w3, [x8, w9, sxtw]
	bl	stbiw__write3
	b	.LBB0_17
.LBB0_17:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #0
	b.le	.LBB0_19
	b	.LBB0_18
.LBB0_18:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	w0, [x9]
	ldr	x9, [sp, #16]
	ldur	w10, [x29, #-16]
	mov	w2, #1
	subs	w10, w10, #1
	add	x1, x9, w10, sxtw
	blr	x8
	b	.LBB0_19
.LBB0_19:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbiw__write_pixel, .Lfunc_end0-stbiw__write_pixel
                                        // -- End function
	.type	.L__const.stbiw__write_pixel.bg,@object // @__const.stbiw__write_pixel.bg
	.section	.rodata,"a",@progbits
.L__const.stbiw__write_pixel.bg:
	.ascii	"\377\000\377"
	.size	.L__const.stbiw__write_pixel.bg, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__write_pixel
	.addrsig_sym stbiw__write3