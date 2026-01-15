	.text
	.p2align	2                               // -- Begin function even
	.type	even,@function
even:                                   // @even
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	str	w8, [sp, #12]
	b	.LBB0_5
.LBB0_2:
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #8]
	subs	w9, w9, #1
	and	w8, w8, w9
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	str	w8, [sp, #12]
	b	.LBB0_5
.LBB0_4:
	str	wzr, [sp, #12]
	b	.LBB0_5
.LBB0_5:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	even, .Lfunc_end0-even
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym even