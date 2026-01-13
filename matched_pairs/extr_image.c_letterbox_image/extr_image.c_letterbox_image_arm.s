	.text
	.globl	letterbox_image                 // -- Begin function letterbox_image
	.p2align	2
	.type	letterbox_image,@function
letterbox_image:                        // @letterbox_image
// %bb.0:
	sub	sp, sp, #224
	stp	x29, x30, [sp, #208]            // 16-byte Folded Spill
	add	x29, sp, #208
	stur	x0, [x29, #-48]
	stur	x1, [x29, #-40]
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-32]
	ldur	w8, [x29, #-40]
	stur	w8, [x29, #-24]
	stur	w2, [x29, #-52]
	stur	w3, [x29, #-56]
	ldur	w8, [x29, #-32]
	stur	w8, [x29, #-60]
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-64]
	ldur	s0, [x29, #-52]
	scvtf	s0, s0
	ldur	s1, [x29, #-32]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldur	s1, [x29, #-56]
	scvtf	s1, s1
	ldur	s2, [x29, #-28]
	scvtf	s2, s2
	fdiv	s1, s1, s2
	fcmp	s0, s1
	b.pl	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-52]
	stur	w8, [x29, #-60]
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-52]
	mul	w8, w8, w9
	ldur	w9, [x29, #-32]
	sdiv	w8, w8, w9
	stur	w8, [x29, #-64]
	b	.LBB0_3
.LBB0_2:
	ldur	w8, [x29, #-56]
	stur	w8, [x29, #-64]
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-56]
	mul	w8, w8, w9
	ldur	w9, [x29, #-28]
	sdiv	w8, w8, w9
	stur	w8, [x29, #-60]
	b	.LBB0_3
.LBB0_3:
	ldur	w2, [x29, #-60]
	ldur	w3, [x29, #-64]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-96]
	ldur	w8, [x29, #-24]
	stur	w8, [x29, #-88]
	ldur	x0, [x29, #-96]
	ldur	x1, [x29, #-88]
	bl	resize_image
	str	x0, [sp, #96]
	str	x1, [sp, #104]
	ldr	x8, [sp, #96]
	stur	x8, [x29, #-80]
	ldr	w8, [sp, #104]
	stur	w8, [x29, #-72]
	ldur	w0, [x29, #-52]
	ldur	w1, [x29, #-56]
	ldur	w2, [x29, #-24]
	bl	make_image
	str	x0, [sp, #80]
	str	x1, [sp, #88]
	ldr	x8, [sp, #80]
	stur	x8, [x29, #-16]
	ldr	w8, [sp, #88]
	stur	w8, [x29, #-8]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #64]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #72]
	ldr	x0, [sp, #64]
	ldr	x1, [sp, #72]
	fmov	d0, #0.50000000
	bl	fill_image
	ldur	w8, [x29, #-52]
	ldur	w9, [x29, #-60]
	subs	w8, w8, w9
	mov	w9, #2
	sdiv	w4, w8, w9
	ldur	w8, [x29, #-56]
	ldur	w10, [x29, #-64]
	subs	w8, w8, w10
	sdiv	w5, w8, w9
	ldur	x8, [x29, #-80]
	str	x8, [sp, #48]
	ldur	w8, [x29, #-72]
	str	w8, [sp, #56]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #40]
	ldr	x2, [sp, #32]
	ldr	x3, [sp, #40]
	bl	embed_image
	ldur	x8, [x29, #-80]
	str	x8, [sp, #16]
	ldur	w8, [x29, #-72]
	str	w8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	free_image
	ldur	x8, [x29, #-16]
	str	x8, [sp]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #8]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	ldp	x29, x30, [sp, #208]            // 16-byte Folded Reload
	add	sp, sp, #224
	ret
.Lfunc_end0:
	.size	letterbox_image, .Lfunc_end0-letterbox_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resize_image
	.addrsig_sym make_image
	.addrsig_sym fill_image
	.addrsig_sym embed_image
	.addrsig_sym free_image