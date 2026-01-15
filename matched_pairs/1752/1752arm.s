	.text
	.globl	get_network_image_layer         // -- Begin function get_network_image_layer
	.p2align	2
	.type	get_network_image_layer,@function
get_network_image_layer:                // @get_network_image_layer
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	add	x8, x8, x9, lsl #5
	ldr	q0, [x8]
	str	q0, [sp, #16]
	ldr	q0, [x8, #16]
	str	q0, [sp, #32]
	ldr	x8, [sp, #40]
	cbz	x8, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #24]
	ldr	w3, [sp, #16]
	bl	float_to_image
	stur	w0, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	str	wzr, [sp, #12]
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	get_network_image_layer, .Lfunc_end0-get_network_image_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym float_to_image