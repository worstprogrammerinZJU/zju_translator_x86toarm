	.text
	.globl	load_image_paths                // -- Begin function load_image_paths
	.p2align	2
	.type	load_image_paths,@function
load_image_paths:                       // @load_image_paths
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-24]
	stur	w1, [x29, #-28]
	str	w2, [sp, #32]
	str	w3, [sp, #28]
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-16]
	ldur	w0, [x29, #-16]
	mov	w1, #8
	bl	calloc
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	str	wzr, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #24]
	ldr	x0, [x8, x9, lsl #3]
	ldr	w1, [sp, #32]
	ldr	w2, [sp, #28]
	bl	load_image_color
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	w8, [sp, #20]
	ldur	x9, [x29, #-8]
	ldrsw	x10, [sp, #24]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	mul	w8, w8, w9
	ldr	w9, [sp, #16]
	mul	w8, w8, w9
	stur	w8, [x29, #-12]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_1
.LBB0_4:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	load_image_paths, .Lfunc_end0-load_image_paths
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym load_image_color