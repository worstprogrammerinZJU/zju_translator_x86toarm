	.text
	.globl	softmax                         // -- Begin function softmax
	.p2align	2
	.type	softmax,@function
softmax:                                // @softmax
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	s0, [x29, #-16]
	stur	w2, [x29, #-20]
	str	x3, [sp, #16]
	movi	d0, #0000000000000000
	str	s0, [sp, #8]
	adrp	x8, FLT_MAX
	ldr	s0, [x8, :lo12:FLT_MAX]
	fneg	s0, s0
	str	s0, [sp, #4]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w9, [sp, #12]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	ldr	s1, [sp, #4]
	fcmp	s0, s1
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w9, [sp, #12]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #4]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_6:
	str	wzr, [sp, #12]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w9, [sp, #12]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	ldur	s1, [x29, #-16]
	fdiv	s0, s0, s1
	ldr	s1, [sp, #4]
	ldur	s2, [x29, #-16]
	fdiv	s1, s1, s2
	fsub	s0, s0, s1
	bl	exp
	str	s0, [sp]
	ldr	s1, [sp]
	ldr	s0, [sp, #8]
	fadd	s0, s0, s1
	str	s0, [sp, #8]
	ldr	w8, [sp]
	ldr	x9, [sp, #16]
	ldr	w10, [sp, #12]
	ldur	w11, [x29, #-20]
	mul	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_10:
	str	wzr, [sp, #12]
	b	.LBB0_11
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	s1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #12]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldr	s0, [x8]
	fdiv	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_11
.LBB0_14:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	softmax, .Lfunc_end0-softmax
                                        // -- End function
	.type	FLT_MAX,@object                 // @FLT_MAX
	.bss
	.globl	FLT_MAX
	.p2align	2
FLT_MAX:
	.word	0x00000000                      // float 0
	.size	FLT_MAX, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym exp
	.addrsig_sym FLT_MAX