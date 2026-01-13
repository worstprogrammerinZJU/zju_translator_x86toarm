	.text
	.globl	letterbox_image_into            // -- Begin function letterbox_image_into
	.p2align	2
	.type	letterbox_image_into,@function
letterbox_image_into:                   // @letterbox_image_into
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x3, [x29, #-16]
	stur	w1, [x29, #-20]
	str	w2, [sp, #24]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #20]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #16]
	ldur	s0, [x29, #-20]
	scvtf	s0, s0
	ldur	s1, [x29, #-8]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldr	s1, [sp, #24]
	scvtf	s1, s1
	ldur	s2, [x29, #-4]
	scvtf	s2, s2
	fdiv	s1, s1, s2
	fcmp	s0, s1
	b.pl	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-20]
	str	w8, [sp, #20]
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-20]
	mul	w8, w8, w9
	ldur	w9, [x29, #-8]
	sdiv	w8, w8, w9
	str	w8, [sp, #16]
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #24]
	str	w8, [sp, #16]
	ldur	w8, [x29, #-8]
	ldr	w9, [sp, #24]
	mul	w8, w8, w9
	ldur	w9, [x29, #-4]
	sdiv	w8, w8, w9
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_3:
	ldr	w1, [sp, #20]
	ldr	w2, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	resize_image
	str	x0, [sp, #8]
	ldur	w8, [x29, #-20]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	mov	w9, #2
	sdiv	w2, w8, w9
	ldr	w8, [sp, #24]
	ldr	w10, [sp, #16]
	subs	w8, w8, w10
	sdiv	w3, w8, w9
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-16]
	bl	embed_image
	ldr	x0, [sp, #8]
	bl	free_image
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	letterbox_image_into, .Lfunc_end0-letterbox_image_into
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resize_image
	.addrsig_sym embed_image
	.addrsig_sym free_image