	.text
	.globl	load_image                      // -- Begin function load_image
	.p2align	2
	.type	load_image,@function
load_image:                             // @load_image
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	w2, [sp, #24]
	str	w3, [sp, #20]
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #20]
	bl	load_image_stb
	stur	x0, [x29, #-8]
	ldr	w8, [sp, #24]
	cbz	w8, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	w1, [x29, #-20]
	ldr	w2, [sp, #24]
	ldur	x0, [x29, #-8]
	bl	resize_image
	stur	x0, [sp, #12]
	ldur	x0, [x29, #-8]
	bl	free_image
	ldur	x8, [sp, #12]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	load_image, .Lfunc_end0-load_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_image_stb
	.addrsig_sym resize_image
	.addrsig_sym free_image