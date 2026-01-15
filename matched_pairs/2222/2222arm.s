	.text
	.p2align	2                               // -- Begin function stbi__info_main
	.type	stbi__info_main,@function
stbi__info_main:                        // @stbi__info_main
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	str	x3, [sp, #8]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	stbi__jpeg_info
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_2:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	stbi__png_info
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_4:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	stbi__gif_info
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_6:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	stbi__bmp_info
	cbz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_8:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	stbi__psd_info
	cbz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_10:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	stbi__pic_info
	cbz	x0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_12:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	stbi__pnm_info
	cbz	x0, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_14:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	stbi__hdr_info
	cbz	x0, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_16:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	stbi__tga_info
	cbz	x0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_18:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_19
.LBB0_19:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__info_main, .Lfunc_end0-stbi__info_main
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unknown image type"
	.size	.L.str, 19
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Image not of any known type, or corrupt"
	.size	.L.str.1, 40
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__info_main
	.addrsig_sym stbi__jpeg_info
	.addrsig_sym stbi__png_info
	.addrsig_sym stbi__gif_info
	.addrsig_sym stbi__bmp_info
	.addrsig_sym stbi__psd_info
	.addrsig_sym stbi__pic_info
	.addrsig_sym stbi__pnm_info
	.addrsig_sym stbi__hdr_info
	.addrsig_sym stbi__tga_info
	.addrsig_sym stbi__err