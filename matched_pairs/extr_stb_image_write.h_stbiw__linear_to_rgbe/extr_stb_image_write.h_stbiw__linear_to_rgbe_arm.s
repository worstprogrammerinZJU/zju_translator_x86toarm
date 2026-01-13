	.text
	.globl	stbiw__linear_to_rgbe           // -- Begin function stbiw__linear_to_rgbe
	.p2align	2
	.type	stbiw__linear_to_rgbe,@function
stbiw__linear_to_rgbe:                  // @stbiw__linear_to_rgbe
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	s0, [x8]
	str	s0, [sp]                        // 4-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	s0, [x8, #4]
	ldr	x8, [sp, #16]
	ldr	s1, [x8, #8]
	bl	stbiw__max
	fmov	s1, s0
	ldr	s0, [sp]                        // 4-byte Folded Reload
	bl	stbiw__max
	str	s0, [sp, #8]
	ldr	s0, [sp, #8]
	mov	w8, #45343
	movk	w8, #2639, lsl #16
	fmov	s1, w8
	fcmp	s0, s1
	b.pl	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	strb	wzr, [x8, #3]
	ldur	x8, [x29, #-8]
	strb	wzr, [x8, #2]
	ldur	x8, [x29, #-8]
	strb	wzr, [x8, #1]
	ldur	x8, [x29, #-8]
	strb	wzr, [x8]
	b	.LBB0_3
.LBB0_2:
	ldr	s0, [sp, #8]
	add	x0, sp, #12
	bl	frexp
	scvtf	s0, x0
	mov	w8, #1132462080
	fmov	s1, w8
	fmul	s0, s0, s1
	ldr	s1, [sp, #8]
	fdiv	s0, s0, s1
	str	s0, [sp, #4]
	ldr	x8, [sp, #16]
	ldr	s0, [x8]
	ldr	s1, [sp, #4]
	fmul	s0, s0, s1
	fcvtzu	w8, s0
	ldur	x9, [x29, #-8]
	strb	w8, [x9]
	ldr	x8, [sp, #16]
	ldr	s0, [x8, #4]
	ldr	s1, [sp, #4]
	fmul	s0, s0, s1
	fcvtzu	w8, s0
	ldur	x9, [x29, #-8]
	strb	w8, [x9, #1]
	ldr	x8, [sp, #16]
	ldr	s0, [x8, #8]
	ldr	s1, [sp, #4]
	fmul	s0, s0, s1
	fcvtzu	w8, s0
	ldur	x9, [x29, #-8]
	strb	w8, [x9, #2]
	ldr	w8, [sp, #12]
	add	w8, w8, #128
	ldur	x9, [x29, #-8]
	strb	w8, [x9, #3]
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbiw__linear_to_rgbe, .Lfunc_end0-stbiw__linear_to_rgbe
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__max
	.addrsig_sym frexp