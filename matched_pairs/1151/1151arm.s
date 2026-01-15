	.text
	.globl	tile_images                     // -- Begin function tile_images
	.p2align	2
	.type	tile_images,@function
tile_images:                            // @tile_images
// %bb.0:
	sub	sp, sp, #304
	stp	x29, x30, [sp, #272]            // 16-byte Folded Spill
	str	x28, [sp, #288]                 // 8-byte Folded Spill
	add	x29, sp, #272
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	str	x0, [sp, #48]                   // 8-byte Folded Spill
	str	x1, [sp, #56]                   // 8-byte Folded Spill
	stur	w2, [x29, #-4]
	ldr	x8, [x0]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	ldr	q0, [x9]
	sub	x0, x29, #48
	stur	q0, [x29, #-48]
	ldr	q0, [x9, #16]
	stur	q0, [x29, #-32]
	bl	copy_image
	b	.LBB0_9
.LBB0_2:
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	x10, [x8]
	ldr	x11, [x9]
	add	x10, x10, x11
	ldursw	x11, [x29, #-4]
	add	x10, x10, x11
	str	x10, [sp, #32]                  // 8-byte Folded Spill
	ldr	x8, [x8, #8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	x10, [sp, #24]                  // 8-byte Folded Reload
	str	x10, [sp, #16]                  // 8-byte Folded Spill
	ldr	x8, [x8, #16]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.le	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_8
.LBB0_7:
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_8
.LBB0_8:
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	sub	x8, x29, #80
	bl	make_image
	ldur	x8, [x29, #-80]
	ldur	x9, [x29, #-72]
	mul	x8, x8, x9
	ldur	x9, [x29, #-64]
	mul	x8, x8, x9
	mov	w0, w8
	ldur	w2, [x29, #-56]
	mov	w3, #1
	mov	w1, w3
	bl	fill_cpu
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	q0, [x8]
	sub	x0, x29, #112
	stur	q0, [x29, #-112]
	ldr	q0, [x8, #16]
	stur	q0, [x29, #-96]
	ldur	q0, [x29, #-80]
	add	x1, sp, #128
	str	q0, [sp, #128]
	ldur	q0, [x29, #-64]
	str	q0, [sp, #144]
	mov	w3, wzr
	str	w3, [sp, #4]                    // 4-byte Folded Spill
	mov	w2, w3
	bl	embed_image
	ldr	x9, [sp, #48]                   // 8-byte Folded Reload
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	w3, [sp, #4]                    // 4-byte Folded Reload
	ldr	x9, [x9]
	ldursw	x10, [x29, #-4]
	add	x9, x9, x10
	mov	w2, w9
	ldr	q0, [x8]
	add	x0, sp, #96
	str	q0, [sp, #96]
	ldr	q0, [x8, #16]
	str	q0, [sp, #112]
	ldur	q0, [x29, #-80]
	add	x1, sp, #64
	str	q0, [sp, #64]
	ldur	q0, [x29, #-64]
	str	q0, [sp, #80]
	bl	composite_image
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldur	q0, [x29, #-80]
	str	q0, [x8]
	ldur	q0, [x29, #-64]
	str	q0, [x8, #16]
	b	.LBB0_9
.LBB0_9:
	ldr	x28, [sp, #288]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #272]            // 16-byte Folded Reload
	add	sp, sp, #304
	ret
.Lfunc_end0:
	.size	tile_images, .Lfunc_end0-tile_images
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_image
	.addrsig_sym make_image
	.addrsig_sym fill_cpu
	.addrsig_sym embed_image
	.addrsig_sym composite_image