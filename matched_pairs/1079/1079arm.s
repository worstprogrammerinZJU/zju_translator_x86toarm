	.text
	.globl	collapse_images_horz            // -- Begin function collapse_images_horz
	.p2align	2
	.type	collapse_images_horz,@function
collapse_images_horz:                   // @collapse_images_horz
// %bb.0:
	sub	sp, sp, #320
	stp	x29, x30, [sp, #288]            // 16-byte Folded Spill
	str	x28, [sp, #304]                 // 8-byte Folded Spill
	add	x29, sp, #288
	stur	x0, [x29, #-24]
	stur	w1, [x29, #-28]
	mov	w8, #1
	stur	w8, [x29, #-32]
	stur	w8, [x29, #-36]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	stur	w8, [x29, #-52]
	ldur	w8, [x29, #-52]
	stur	w8, [x29, #-40]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #4]
	ldur	w9, [x29, #-36]
	add	w8, w8, w9
	ldur	w9, [x29, #-28]
	mul	w8, w8, w9
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	stur	w8, [x29, #-44]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-48]
	subs	w8, w8, #3
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-32]
	cbnz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-40]
	ldur	w9, [x29, #-36]
	add	w8, w8, w9
	ldur	w9, [x29, #-48]
	mul	w8, w8, w9
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	stur	w8, [x29, #-40]
	mov	w8, #1
	stur	w8, [x29, #-48]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-44]
	ldur	w1, [x29, #-40]
	ldur	w2, [x29, #-48]
	bl	make_image
	stur	x0, [x29, #-72]
	stur	x1, [x29, #-64]
	ldur	x8, [x29, #-72]
	stur	x8, [x29, #-16]
	ldur	w8, [x29, #-64]
	stur	w8, [x29, #-8]
	stur	wzr, [x29, #-76]
	b	.LBB0_4
.LBB0_4:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_9 Depth 2
	ldur	w8, [x29, #-76]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-76]
	ldur	w9, [x29, #-52]
	ldur	w10, [x29, #-36]
	add	w9, w9, w10
	mul	w8, w8, w9
	stur	w8, [x29, #-84]
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-76]
	mov	x10, #12
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	x9, [x8]
	stur	x9, [x29, #-112]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-104]
	ldur	x0, [x29, #-112]
	ldur	x1, [x29, #-104]
	bl	copy_image
	stur	x0, [x29, #-128]
	stur	x1, [x29, #-120]
	ldur	x8, [x29, #-128]
	stur	x8, [x29, #-96]
	ldur	w8, [x29, #-120]
	stur	w8, [x29, #-88]
	ldur	w8, [x29, #-48]
	subs	w8, w8, #3
	b.ne	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-32]
	cbz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	w4, [x29, #-84]
	ldur	x8, [x29, #-96]
	str	x8, [sp, #144]
	ldur	w8, [x29, #-88]
	str	w8, [sp, #152]
	ldr	x0, [sp, #144]
	ldr	x1, [sp, #152]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #128]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #136]
	ldr	x2, [sp, #128]
	ldr	x3, [sp, #136]
	mov	w5, wzr
	bl	embed_image
	b	.LBB0_13
.LBB0_8:                                //   in Loop: Header=BB0_4 Depth=1
	stur	wzr, [x29, #-80]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-80]
	ldur	w9, [x29, #-88]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=2
	ldur	w8, [x29, #-80]
	ldur	w9, [x29, #-52]
	ldur	w10, [x29, #-36]
	add	w9, w9, w10
	mul	w8, w8, w9
	str	w8, [sp, #124]
	ldur	w2, [x29, #-80]
	ldur	x8, [x29, #-96]
	str	x8, [sp, #96]
	ldur	w8, [x29, #-88]
	str	w8, [sp, #104]
	ldr	x0, [sp, #96]
	ldr	x1, [sp, #104]
	bl	get_image_layer
	str	x0, [sp, #80]
	str	x1, [sp, #88]
	ldr	x8, [sp, #80]
	str	x8, [sp, #112]
	ldr	w8, [sp, #88]
	str	w8, [sp, #120]
	ldur	w4, [x29, #-84]
	ldr	w5, [sp, #124]
	ldr	x8, [sp, #112]
	str	x8, [sp, #64]
	ldr	w8, [sp, #120]
	str	w8, [sp, #72]
	ldr	x0, [sp, #64]
	ldr	x1, [sp, #72]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #56]
	ldr	x2, [sp, #48]
	ldr	x3, [sp, #56]
	bl	embed_image
	ldr	x8, [sp, #112]
	str	x8, [sp, #32]
	ldr	w8, [sp, #120]
	str	w8, [sp, #40]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	bl	free_image
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=2
	ldur	w8, [x29, #-80]
	add	w8, w8, #1
	stur	w8, [x29, #-80]
	b	.LBB0_9
.LBB0_12:                               //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_4 Depth=1
	ldur	x8, [x29, #-96]
	str	x8, [sp, #16]
	ldur	w8, [x29, #-88]
	str	w8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	free_image
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-76]
	add	w8, w8, #1
	stur	w8, [x29, #-76]
	b	.LBB0_4
.LBB0_15:
	ldur	x8, [x29, #-16]
	str	x8, [sp]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #8]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	ldr	x28, [sp, #304]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #288]            // 16-byte Folded Reload
	add	sp, sp, #320
	ret
.Lfunc_end0:
	.size	collapse_images_horz, .Lfunc_end0-collapse_images_horz
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym copy_image
	.addrsig_sym embed_image
	.addrsig_sym get_image_layer
	.addrsig_sym free_image