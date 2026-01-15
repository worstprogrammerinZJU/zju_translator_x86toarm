	.text
	.globl	nms_comparator                  // -- Begin function nms_comparator
	.p2align	2
	.type	nms_comparator,@function
nms_comparator:                         // @nms_comparator
// %bb.0:
	sub	sp, sp, #96
	str	x0, [sp, #80]
	str	x1, [sp, #72]
	ldr	x8, [sp, #80]
	ldr	q0, [x8]
	str	q0, [sp, #48]
	ldr	x8, [x8, #16]
	str	x8, [sp, #64]
	ldr	x8, [sp, #72]
	ldr	q0, [x8]
	str	q0, [sp, #16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #32]
	movi	d0, #0000000000000000
	str	s0, [sp, #12]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	b.lo	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #56]
	ldr	x9, [sp, #16]
	ldr	s0, [x8, x9, lsl #2]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	ldr	s1, [x8, x9, lsl #2]
	fsub	s0, s0, s1
	str	s0, [sp, #12]
	b	.LBB0_3
.LBB0_2:
	ldr	s0, [sp, #64]
	ldr	s1, [sp, #32]
	fsub	s0, s0, s1
	str	s0, [sp, #12]
	b	.LBB0_3
.LBB0_3:
	ldr	s0, [sp, #12]
	fcmp	s0, #0.0
	b.pl	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	mov	w8, #1
	str	w8, [sp, #92]
	b	.LBB0_9
.LBB0_5:
	ldr	s0, [sp, #12]
	fcmp	s0, #0.0
	b.le	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	mov	w8, #-1
	str	w8, [sp, #92]
	b	.LBB0_9
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	str	wzr, [sp, #92]
	b	.LBB0_9
.LBB0_9:
	ldr	w0, [sp, #92]
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	nms_comparator, .Lfunc_end0-nms_comparator
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig