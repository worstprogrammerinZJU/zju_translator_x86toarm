	.text
	.globl	rand_int                        // -- Begin function rand_int
	.p2align	2
	.type	rand_int,@function
rand_int:                               // @rand_int
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldr	w8, [sp, #8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-4]
	str	w8, [sp, #4]
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	ldr	w8, [sp, #4]
	str	w8, [sp, #8]
	b	.LBB0_2
.LBB0_2:
	bl	rand
	ldr	w8, [sp, #8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	add	w9, w8, #1
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	ldur	w9, [x29, #-4]
	add	w8, w8, w9
	str	w8, [sp]
	ldr	w0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	rand_int, .Lfunc_end0-rand_int
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand