	.text
	.globl	one_hot_encode                  // -- Begin function one_hot_encode
	.p2align	2
	.type	one_hot_encode,@function
one_hot_encode:                         // @one_hot_encode
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	w0, [x29, #-12]
	mov	w1, #8
	bl	calloc
	str	x0, [sp, #16]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-16]
	mov	w1, #4
	bl	calloc
	ldr	x8, [sp, #16]
	ldursw	x9, [x29, #-20]
	str	x0, [x8, x9, lsl #3]
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-20]
	ldr	s0, [x8, x9, lsl #2]
	fcvtzs	w8, s0
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	ldursw	x9, [x29, #-20]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #12]
	fmov	s0, #1.00000000
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_4:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	one_hot_encode, .Lfunc_end0-one_hot_encode
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc