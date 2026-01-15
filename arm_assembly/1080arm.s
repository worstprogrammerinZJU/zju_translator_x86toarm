	.text
	.globl	collapse_images_vert            // -- Begin function collapse_images_vert
	.p2align	2
	.type	collapse_images_vert,@function
collapse_images_vert:                   // @collapse_images_vert
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
	stur	w8, [x29, #-44]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #4]
	ldur	w9, [x29, #-36]
	add	w8, w8, w9
	ldur	w9, [x29, #-28]
	mul	w8, w8, w9
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	stur	w8, [x29, #-40]
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
	ldur	w8, [x29, #-44]
	ldur	w9, [x29, #-36]
	add	w8, w8, w9
	ldur	w9, [x29, #-48]
	mul	w8, w8, w9
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	stur	w8, [x29, #-44]
	mov	w8, #1
	stur	w8, [x29, #-48]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-44]
	ldur	w1, [x29, #-40]
	ldur	w2, [x29, #-48]
	bl	make_image
	stur	x0, [x29, #-64]
	stur	x1, [x29, #-56]
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-16]
	ldur	w8, [x29, #-56]
	stur	w8, [x29, #-8]
	stur	wzr, [x29, #-68]
	b	.LBB0_4
.LBB0_4:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_9 Depth 2
	ldur	w8, [x29, #-68]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-68]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #4]
	ldur	w10, [x29, #-36]
	add	w9, w9, w10
	mul	w8, w8, w9
	stur	w8, [x29, #-76]
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-68]
	mov	x10, #12
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	x9, [x8]
	stur	x9, [x29, #-104]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-96]
	ldur	x0, [x29, #-104]
	ldur	x1, [x29, #-96]
	bl	copy_image
	stur	x0, [x29, #-120]
	stur	x1, [x29, #-112]
	ldur	x8, [x29, #-120]
	stur	x8, [x29, #-88]
	ldur	w8, [x29, #-112]
	stur	w8, [x29, #-80]
	ldur	w8, [x29, #-48]
	subs	w8, w8, #3
	b.ne	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-32]
	cbz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	w5, [x29, #-76]
	ldur	x8, [x29, #-88]
	stur	x8, [x29, #-136]
	ldur	w8, [x29, #-80]
	stur	w8, [x29, #-128]
	ldur	x0, [x29, #-136]
	ldur	x1, [x29, #-128]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #136]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #144]
	ldr	x2, [sp, #136]
	ldr	x3, [sp, #144]
	mov	w4, wzr
	bl	embed_image
	b	.LBB0_13
.LBB0_8:                                //   in Loop: Header=BB0_4 Depth=1
	stur	wzr, [x29, #-72]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-72]
	ldur	w9, [x29, #-80]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=2
	ldur	w8, [x29, #-72]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9]
	ldur	w10, [x29, #-36]
	add	w9, w9, w10
	mul	w8, w8, w9
	str	w8, [sp, #132]
	ldur	w2, [x29, #-72]
	ldur	x8, [x29, #-88]
	str	x8, [sp, #104]
	ldur	w8, [x29, #-80]
	str	w8, [sp, #112]
	ldr	x0, [sp, #104]
	ldr	x1, [sp, #112]
	bl	get_image_layer
	str	x0, [sp, #88]
	str	x1, [sp, #96]
	ldr	x8, [sp, #88]
	str	x8, [sp, #120]
	ldr	w8, [sp, #96]
	str	w8, [sp, #128]
	ldr	w4, [sp, #132]
	ldur	w5, [x29, #-76]
	ldr	x8, [sp, #120]
	str	x8, [sp, #72]
	ldr	w8, [sp, #128]
	str	w8, [sp, #80]
	ldr	x0, [sp, #72]
	ldr	x1, [sp, #80]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #64]
	ldr	x2, [sp, #56]
	ldr	x3, [sp, #64]
	bl	embed_image
	ldr	x8, [sp, #120]
	str	x8, [sp, #40]
	ldr	w8, [sp, #128]
	str	w8, [sp, #48]
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #48]
	bl	free_image
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=2
	ldur	w8, [x29, #-72]
	add	w8, w8, #1
	stur	w8, [x29, #-72]
	b	.LBB0_9
.LBB0_12:                               //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_4 Depth=1
	ldur	x8, [x29, #-88]
	str	x8, [sp, #24]
	ldur	w8, [x29, #-80]
	str	w8, [sp, #32]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #32]
	bl	free_image
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-68]
	add	w8, w8, #1
	stur	w8, [x29, #-68]
	b	.LBB0_4
.LBB0_15:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #16]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	ldr	x28, [sp, #304]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #288]            // 16-byte Folded Reload
	add	sp, sp, #320
	ret
.Lfunc_end0:
	.size	collapse_images_vert, .Lfunc_end0-collapse_images_vert
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym copy_image
	.addrsig_sym embed_image
	.addrsig_sym get_image_layer
	.addrsig_sym free_image