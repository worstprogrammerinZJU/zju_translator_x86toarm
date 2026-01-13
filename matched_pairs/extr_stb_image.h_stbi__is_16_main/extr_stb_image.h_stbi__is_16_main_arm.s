	.text
	.p2align	2                               // -- Begin function stbi__is_16_main
	.type	stbi__is_16_main,@function
stbi__is_16_main:                       // @stbi__is_16_main
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x0, [sp]
	bl	stbi__png_is16
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldr	x0, [sp]
	bl	stbi__psd_is16
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__is_16_main, .Lfunc_end0-stbi__is_16_main
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__is_16_main
	.addrsig_sym stbi__png_is16
	.addrsig_sym stbi__psd_is16