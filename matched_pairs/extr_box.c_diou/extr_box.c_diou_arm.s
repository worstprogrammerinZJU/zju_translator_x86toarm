	.text
	.globl	diou                            // -- Begin function diou
	.p2align	2
	.type	diou,@function
diou:                                   // @diou
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-24]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-24]
	bl	box_union
	stur	s0, [x29, #-36]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-24]
	bl	box_intersection
	stur	s0, [x29, #-40]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-24]
	add	x8, sp, #56
	bl	dintersect
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-24]
	add	x8, sp, #24
	bl	dunion
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	movi	v0.2d, #0000000000000000
	str	q0, [x8]
	str	q0, [x8, #16]
	ldur	s0, [x29, #-40]
	fcmp	s0, #0.0
	b.ls	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	tbz	w8, #0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-32]
	ldur	w10, [x29, #-16]
	subs	w8, w8, w10
	str	w8, [x9]
	ldur	w8, [x29, #-28]
	ldur	w10, [x29, #-12]
	subs	w8, w8, w10
	str	w8, [x9, #4]
	ldur	w8, [x29, #-24]
	ldur	w10, [x29, #-8]
	subs	w8, w8, w10
	str	w8, [x9, #8]
	ldur	w8, [x29, #-20]
	ldur	w10, [x29, #-4]
	subs	w8, w8, w10
	str	w8, [x9, #12]
	b	.LBB0_4
.LBB0_3:
	ldur	s0, [x29, #-40]
	ldur	s1, [x29, #-36]
	fdiv	s1, s0, s1
	fmov	s0, #1.00000000
	str	s0, [sp, #4]                    // 4-byte Folded Spill
	fsub	s0, s0, s1
	fcvtzs	w0, s0
	mov	w1, #1
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	bl	pow
	ldr	s0, [sp, #4]                    // 4-byte Folded Reload
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	mov	w8, #2
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	mul	w8, w8, w0
	scvtf	s1, w8
	ldr	s2, [sp, #56]
	scvtf	s2, s2
	ldur	s3, [x29, #-36]
	ldr	s4, [sp, #24]
	scvtf	s4, s4
	ldur	s5, [x29, #-40]
	fmul	s4, s4, s5
	fnmsub	s2, s2, s3, s4
	fmul	s1, s1, s2
	ldur	s2, [x29, #-36]
	ldur	s3, [x29, #-36]
	fmul	s2, s2, s3
	fdiv	s1, s1, s2
	fcvtzs	w8, s1
	str	w8, [x9]
	ldur	s1, [x29, #-40]
	ldur	s2, [x29, #-36]
	fdiv	s1, s1, s2
	fsub	s0, s0, s1
	fcvtzs	w0, s0
	bl	pow
	ldr	s0, [sp, #4]                    // 4-byte Folded Reload
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	mul	w8, w8, w0
	scvtf	s1, w8
	ldr	s2, [sp, #60]
	scvtf	s2, s2
	ldur	s3, [x29, #-36]
	ldr	s4, [sp, #28]
	scvtf	s4, s4
	ldur	s5, [x29, #-40]
	fmul	s4, s4, s5
	fnmsub	s2, s2, s3, s4
	fmul	s1, s1, s2
	ldur	s2, [x29, #-36]
	ldur	s3, [x29, #-36]
	fmul	s2, s2, s3
	fdiv	s1, s1, s2
	fcvtzs	w8, s1
	str	w8, [x9, #4]
	ldur	s1, [x29, #-40]
	ldur	s2, [x29, #-36]
	fdiv	s1, s1, s2
	fsub	s0, s0, s1
	fcvtzs	w0, s0
	bl	pow
	ldr	s0, [sp, #4]                    // 4-byte Folded Reload
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	mul	w8, w8, w0
	scvtf	s1, w8
	ldr	s2, [sp, #64]
	scvtf	s2, s2
	ldur	s3, [x29, #-36]
	ldr	s4, [sp, #32]
	scvtf	s4, s4
	ldur	s5, [x29, #-40]
	fmul	s4, s4, s5
	fnmsub	s2, s2, s3, s4
	fmul	s1, s1, s2
	ldur	s2, [x29, #-36]
	ldur	s3, [x29, #-36]
	fmul	s2, s2, s3
	fdiv	s1, s1, s2
	fcvtzs	w8, s1
	str	w8, [x9, #8]
	ldur	s1, [x29, #-40]
	ldur	s2, [x29, #-36]
	fdiv	s1, s1, s2
	fsub	s0, s0, s1
	fcvtzs	w0, s0
	bl	pow
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	mul	w8, w8, w0
	scvtf	s0, w8
	ldr	s1, [sp, #68]
	scvtf	s1, s1
	ldur	s2, [x29, #-36]
	ldr	s3, [sp, #36]
	scvtf	s3, s3
	ldur	s4, [x29, #-40]
	fmul	s3, s3, s4
	fnmsub	s1, s1, s2, s3
	fmul	s0, s0, s1
	ldur	s1, [x29, #-36]
	ldur	s2, [x29, #-36]
	fmul	s1, s1, s2
	fdiv	s0, s0, s1
	fcvtzs	w8, s0
	str	w8, [x9, #12]
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	diou, .Lfunc_end0-diou
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym box_union
	.addrsig_sym box_intersection
	.addrsig_sym dintersect
	.addrsig_sym dunion
	.addrsig_sym pow