	.text
	.p2align	2                               // -- Begin function read_rep
	.type	read_rep,@function
read_rep:                               // @read_rep
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	sturb	w0, [x29, #-1]
	str	w1, [sp, #8]
	str	w2, [sp, #4]
	ldurb	w0, [x29, #-1]
	bl	next
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #4]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp]                        // 4-byte Folded Reload
	bl	make_keyword
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_rep, .Lfunc_end0-read_rep
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_rep
	.addrsig_sym make_keyword
	.addrsig_sym next