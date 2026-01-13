	.text
	.p2align	2                               // -- Begin function stbiw__jpg_writeBits
	.type	stbiw__jpg_writeBits,@function
stbiw__jpg_writeBits:                   // @stbiw__jpg_writeBits
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #8]
	ldr	x8, [sp, #16]
	ldrh	w9, [x8, #2]
	ldr	w8, [sp, #8]
	add	w8, w8, w9
	str	w8, [sp, #8]
	ldr	x8, [sp, #16]
	ldrh	w8, [x8]
	ldr	w10, [sp, #8]
	mov	w9, #24
	subs	w9, w9, w10
	lsl	w9, w8, w9
	ldr	w8, [sp, #12]
	orr	w8, w8, w9
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #8
	b.lt	.LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	asr	w8, w8, #16
	and	w8, w8, #0xff
	strb	w8, [sp, #7]
	ldur	x0, [x29, #-8]
	ldrb	w1, [sp, #7]
	bl	stbiw__putc
	ldrb	w8, [sp, #7]
	subs	w8, w8, #255
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	mov	w1, wzr
	bl	stbiw__putc
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	lsl	w8, w8, #8
	str	w8, [sp, #12]
	ldr	w8, [sp, #8]
	subs	w8, w8, #8
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_5:
	ldr	w8, [sp, #12]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbiw__jpg_writeBits, .Lfunc_end0-stbiw__jpg_writeBits
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__jpg_writeBits
	.addrsig_sym stbiw__putc