	.text
	.p2align	2                               // -- Begin function read_rep2
	.type	read_rep2,@function
read_rep2:                              // @read_rep2
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	sturb	w0, [x29, #-9]
	str	w1, [sp, #16]
	strb	w2, [sp, #15]
	str	w3, [sp, #8]
	strb	w4, [sp, #7]
	ldurb	w0, [x29, #-9]
	bl	next
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #16]
	bl	make_keyword
	stur	x0, [x29, #-8]
	b	.LBB0_6
.LBB0_2:
	ldrb	w0, [sp, #15]
	bl	next
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #8]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	ldrb	w8, [sp, #7]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	w0, [sp]                        // 4-byte Folded Reload
	bl	make_keyword
	stur	x0, [x29, #-8]
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_rep2, .Lfunc_end0-read_rep2
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_rep2
	.addrsig_sym next
	.addrsig_sym make_keyword