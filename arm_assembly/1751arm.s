	.text
	.globl	get_network_image               // -- Begin function get_network_image
	.p2align	2
	.type	get_network_image,@function
get_network_image:                      // @get_network_image
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	tbnz	w8, #31, .LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #24]
	ldr	w1, [sp, #20]
	bl	get_network_image_layer
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_7
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_6:
	str	xzr, [sp]
	str	xzr, [sp, #8]
	ldr	q0, [sp]
	stur	q0, [x29, #-16]
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	get_network_image, .Lfunc_end0-get_network_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_network_image_layer