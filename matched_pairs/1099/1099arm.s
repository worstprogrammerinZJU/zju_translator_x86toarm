	.text
	.globl	get_label                       // -- Begin function get_label
	.p2align	2
	.type	get_label,@function
get_label:                              // @get_label
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	ldur	w8, [x29, #-28]
	mov	w9, #10
	sdiv	w8, w8, w9
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-28]
	subs	w8, w8, #7
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #7
	stur	w8, [x29, #-28]
	b	.LBB0_2
.LBB0_2:
	mov	w2, wzr
	mov	w0, w2
	mov	w1, w2
	bl	make_empty_image
	str	d0, [sp, #24]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-24]
	ldrb	w9, [x9]
	ldr	x8, [x8, w9, sxtw #3]
	str	x8, [sp, #16]
	ldur	w9, [x29, #-28]
	mov	w8, wzr
	subs	w8, w8, w9
	subs	w8, w8, #1
	ldur	w9, [x29, #-28]
	add	w9, w9, #1
	mov	w10, #2
	sdiv	w9, w9, w10
	add	w0, w8, w9
	ldr	d0, [sp, #24]
	ldr	d1, [sp, #16]
	bl	tile_images
	str	d0, [sp, #8]
	ldr	d0, [sp, #24]
	bl	free_image
	ldr	x8, [sp, #8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-24]
	add	x8, x8, #1
	stur	x8, [x29, #-24]
	b	.LBB0_3
.LBB0_5:
	ldr	d0, [sp, #24]
	fmov	d1, #0.25000000
	fmul	d1, d0, d1
	ldr	d0, [sp, #24]
	bl	border_image
	stur	d0, [x29, #-8]
	ldr	d0, [sp, #24]
	bl	free_image
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	get_label, .Lfunc_end0-get_label
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_empty_image
	.addrsig_sym tile_images
	.addrsig_sym free_image
	.addrsig_sym border_image