	.text
	.globl	resize_max                      // -- Begin function resize_max
	.p2align	2
	.type	resize_max,@function
resize_max:                             // @resize_max
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	w8, [x29, #-16]
	str	w8, [sp, #24]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #20]
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-20]
	mul	w8, w8, w9
	ldr	w9, [sp, #24]
	sdiv	w8, w8, w9
	str	w8, [sp, #20]
	ldur	w8, [x29, #-20]
	str	w8, [sp, #24]
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-20]
	mul	w8, w8, w9
	ldr	w9, [sp, #20]
	sdiv	w8, w8, w9
	str	w8, [sp, #24]
	ldur	w8, [x29, #-20]
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ne	.LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_7
.LBB0_6:
	ldr	w1, [sp, #24]
	ldr	w2, [sp, #20]
	ldur	x0, [x29, #-16]
	bl	resize_image
	stur	x0, [sp, #12]
	ldur	x8, [sp, #12]
	stur	x8, [x29, #-8]
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	resize_max, .Lfunc_end0-resize_max
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resize_image