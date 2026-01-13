	.text
	.globl	save_image                      // -- Begin function save_image
	.p2align	2
	.type	save_image,@function
save_image:                             // @save_image
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	x1, [sp]
	ldur	w0, [x29, #-4]
	ldr	x1, [sp]
	adrp	x8, JPG
	ldr	w2, [x8, :lo12:JPG]
	mov	w3, #80
	bl	save_image_options
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	save_image, .Lfunc_end0-save_image
                                        // -- End function
	.type	JPG,@object                     // @JPG
	.bss
	.globl	JPG
	.p2align	2
JPG:
	.word	0                               // 0x0
	.size	JPG, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym save_image_options
	.addrsig_sym JPG