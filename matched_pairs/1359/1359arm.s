	.text
	.p2align	2                               // -- Begin function s2b
	.type	s2b,@function
s2b:                                    // @s2b
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	stur	w4, [x29, #-28]
	str	w5, [sp, #32]
	ldur	w8, [x29, #-24]
	add	w8, w8, #8
	mov	w9, #9
	sdiv	w8, w8, w9
	str	w8, [sp, #12]
	str	wzr, [sp, #16]
	mov	w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	b.le	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	lsl	w8, w8, #1
	str	w8, [sp, #8]
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldr	w8, [sp, #16]
	add	w1, w8, #1
	bl	Balloc
	str	x0, [sp, #24]
	ldurh	w8, [x29, #-28]
	ldr	x9, [sp, #24]
	ldr	x9, [x9]
	str	w8, [x9]
	ldur	w8, [x29, #-28]
	asr	w9, w8, #16
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	w9, [x8, #4]
	mov	w8, #2
	subs	w9, w9, #0
	csinc	w8, w8, wzr, ne
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	mov	w8, #9
	str	w8, [sp, #20]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-16]
	add	x8, x8, #9
	stur	x8, [x29, #-16]
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	add	x9, x8, #1
	stur	x9, [x29, #-16]
	ldrb	w8, [x8]
	subs	w3, w8, #48
	mov	w2, #10
	bl	multadd
	str	x0, [sp, #24]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.lt	.LBB0_6
	b	.LBB0_8
.LBB0_8:
	ldrsw	x9, [sp, #32]
	ldur	x8, [x29, #-16]
	add	x8, x8, x9
	stur	x8, [x29, #-16]
	b	.LBB0_10
.LBB0_9:
	ldr	w8, [sp, #32]
	add	w9, w8, #9
	ldur	x8, [x29, #-16]
	add	x8, x8, w9, sxtw
	stur	x8, [x29, #-16]
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	add	x9, x8, #1
	stur	x9, [x29, #-16]
	ldrb	w8, [x8]
	subs	w3, w8, #48
	mov	w2, #10
	bl	multadd
	str	x0, [sp, #24]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_11
.LBB0_14:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	s2b, .Lfunc_end0-s2b
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym s2b
	.addrsig_sym Balloc
	.addrsig_sym multadd