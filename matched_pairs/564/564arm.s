	.text
	.p2align	2                               // -- Begin function distance_from_edge
	.type	distance_from_edge,@function
distance_from_edge:                     // @distance_from_edge
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #8]
	mov	w9, #2
	sdiv	w8, w8, w9
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w9, [sp, #4]
	mov	w8, wzr
	subs	w8, w8, w9
	str	w8, [sp, #4]
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #8]
	mov	w9, #2
	sdiv	w8, w8, w9
	add	w8, w8, #1
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	lsl	w8, w8, #1
	str	w8, [sp, #4]
	ldr	s0, [sp, #4]
	scvtf	s0, s0
	ldr	s1, [sp, #8]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	str	s0, [sp]
	ldr	s0, [sp]
	fmov	s1, #1.00000000
	fcmp	s0, s1
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	fmov	s0, #1.00000000
	str	s0, [sp]
	b	.LBB0_4
.LBB0_4:
	ldr	s0, [sp]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	distance_from_edge, .Lfunc_end0-distance_from_edge
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym distance_from_edge