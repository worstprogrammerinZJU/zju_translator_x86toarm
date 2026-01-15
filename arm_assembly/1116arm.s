	.text
	.globl	make_random_image               // -- Begin function make_random_image
	.p2align	2
	.type	make_random_image,@function
make_random_image:                      // @make_random_image
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-12]
	str	w1, [sp, #16]
	str	w2, [sp, #12]
	ldur	w0, [x29, #-12]
	ldr	w1, [sp, #16]
	ldr	w2, [sp, #12]
	bl	make_empty_image
	stur	x0, [x29, #-8]
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	mul	w8, w8, w9
	ldr	w9, [sp, #12]
	mul	w0, w8, w9
	mov	w1, #4
	bl	calloc
	stur	x0, [x29, #-8]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldur	w9, [x29, #-12]
	ldr	w10, [sp, #16]
	mul	w9, w9, w10
	ldr	w10, [sp, #12]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	bl	rand_normal
	fmov	d2, #0.50000000
	fmov	d1, #0.25000000
	fmadd	d0, d0, d1, d2
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #8]
	str	d0, [x8, x9, lsl #3]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	make_random_image, .Lfunc_end0-make_random_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_empty_image
	.addrsig_sym calloc
	.addrsig_sym rand_normal