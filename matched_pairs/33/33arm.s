	.text
	.p2align	2                               // -- Begin function stair_activate
	.type	stair_activate,@function
stair_activate:                         // @stair_activate
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	s0, [sp, #8]
	ldr	s0, [sp, #8]
	bl	floor
	fcvtzs	w8, s0
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	mov	w10, #2
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	s0, [sp, #8]
	fcvt	d0, s0
	fmov	d1, #2.00000000
	fdiv	d0, d0, d1
	fcvt	s0, d0
	bl	floor
	stur	s0, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	s0, [sp, #8]
	ldr	s1, [sp, #4]
	scvtf	s1, s1
	fsub	s0, s0, s1
	str	s0, [sp]                        // 4-byte Folded Spill
	ldr	s0, [sp, #8]
	fcvt	d0, s0
	fmov	d1, #2.00000000
	fdiv	d0, d0, d1
	fcvt	s0, d0
	bl	floor
	fmov	s1, s0
	ldr	s0, [sp]                        // 4-byte Folded Reload
	fadd	s0, s0, s1
	stur	s0, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	s0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stair_activate, .Lfunc_end0-stair_activate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stair_activate
	.addrsig_sym floor