	.text
	.p2align	2                               // -- Begin function scan_line_end
	.type	scan_line_end,@function
scan_line_end:                          // @scan_line_end
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	x0, [sp, #16]
	ldr	w8, [sp, #12]
	subs	w2, w8, #1
	mov	w1, #13
	bl	memchr
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	xzr, [x29, #-8]
	b	.LBB0_5
.LBB0_2:
	ldr	x8, [sp]
	ldrb	w8, [x8, #1]
	subs	w8, w8, #10
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	add	x8, x8, #2
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_4:
	stur	xzr, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	scan_line_end, .Lfunc_end0-scan_line_end
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym scan_line_end
	.addrsig_sym memchr