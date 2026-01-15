	.text
	.globl	load_image_color                // -- Begin function load_image_color
	.p2align	2
	.type	load_image_color,@function
load_image_color:                       // @load_image_color
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	ldr	w2, [sp]
	mov	w3, #3
	bl	load_image
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	load_image_color, .Lfunc_end0-load_image_color
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_image