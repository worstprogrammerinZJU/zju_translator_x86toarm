	.text
	.globl	load_image_paths_gray           // -- Begin function load_image_paths_gray
	.p2align	2
	.type	load_image_paths_gray,@function
load_image_paths_gray:                  // @load_image_paths_gray
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-24]
	stur	w1, [x29, #-28]
	stur	w2, [x29, #-32]
	stur	w3, [x29, #-36]
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-16]
	ldur	w0, [x29, #-16]
	mov	w1, #8
	bl	calloc
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	str	wzr, [sp, #40]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #40]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #40]
	ldr	x0, [x8, x9, lsl #3]
	ldur	w1, [x29, #-32]
	ldur	w2, [x29, #-36]
	mov	w3, #3
	bl	load_image
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	grayscale_image
	str	x0, [sp]
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	free_image
	ldr	q0, [sp]
	str	q0, [sp, #16]
	ldr	w8, [sp, #28]
	ldur	x9, [x29, #-8]
	ldrsw	x10, [sp, #40]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #20]
	mul	w8, w8, w9
	ldr	w9, [sp, #24]
	mul	w8, w8, w9
	stur	w8, [x29, #-12]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	.LBB0_1
.LBB0_4:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	load_image_paths_gray, .Lfunc_end0-load_image_paths_gray
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym load_image
	.addrsig_sym grayscale_image
	.addrsig_sym free_image