	.text
	.p2align	2                               // -- Begin function stbi__load_main
	.type	stbi__load_main,@function
stbi__load_main:                        // @stbi__load_main
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	w4, [x29, #-44]
	str	x5, [sp, #40]
	str	w6, [sp, #36]
	ldr	x0, [sp, #40]
	mov	w1, wzr
	mov	w2, #24
	bl	memset
	ldr	x9, [sp, #40]
	mov	w8, #8
	str	w8, [x9]
	adrp	x8, STBI_ORDER_RGB
	ldr	w8, [x8, :lo12:STBI_ORDER_RGB]
	ldr	x9, [sp, #40]
	str	w8, [x9, #16]
	ldr	x8, [sp, #40]
	str	xzr, [x8, #8]
	ldur	x0, [x29, #-16]
	bl	stbi__jpeg_test
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	ldur	w4, [x29, #-44]
	ldr	x5, [sp, #40]
	bl	stbi__jpeg_load
	stur	x0, [x29, #-8]
	b	.LBB0_22
.LBB0_2:
	ldur	x0, [x29, #-16]
	bl	stbi__png_test
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	ldur	w4, [x29, #-44]
	ldr	x5, [sp, #40]
	bl	stbi__png_load
	stur	x0, [x29, #-8]
	b	.LBB0_22
.LBB0_4:
	ldur	x0, [x29, #-16]
	bl	stbi__bmp_test
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	ldur	w4, [x29, #-44]
	ldr	x5, [sp, #40]
	bl	stbi__bmp_load
	stur	x0, [x29, #-8]
	b	.LBB0_22
.LBB0_6:
	ldur	x0, [x29, #-16]
	bl	stbi__gif_test
	cbz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	ldur	w4, [x29, #-44]
	ldr	x5, [sp, #40]
	bl	stbi__gif_load
	stur	x0, [x29, #-8]
	b	.LBB0_22
.LBB0_8:
	ldur	x0, [x29, #-16]
	bl	stbi__psd_test
	cbz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	ldur	w4, [x29, #-44]
	ldr	x5, [sp, #40]
	ldr	w6, [sp, #36]
	bl	stbi__psd_load
	stur	x0, [x29, #-8]
	b	.LBB0_22
.LBB0_10:
	ldur	x0, [x29, #-16]
	bl	stbi__pic_test
	cbz	x0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	ldur	w4, [x29, #-44]
	ldr	x5, [sp, #40]
	bl	stbi__pic_load
	stur	x0, [x29, #-8]
	b	.LBB0_22
.LBB0_12:
	ldur	x0, [x29, #-16]
	bl	stbi__pnm_test
	cbz	x0, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	ldur	w4, [x29, #-44]
	ldr	x5, [sp, #40]
	bl	stbi__pnm_load
	stur	x0, [x29, #-8]
	b	.LBB0_22
.LBB0_14:
	ldur	x0, [x29, #-16]
	bl	stbi__hdr_test
	cbz	x0, .LBB0_19
	b	.LBB0_15
.LBB0_15:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	ldur	w4, [x29, #-44]
	ldr	x5, [sp, #40]
	bl	stbi__hdr_load
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldr	w8, [x8]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-44]
	cbz	w8, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldur	w8, [x29, #-44]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_18
.LBB0_17:
	ldur	x8, [x29, #-40]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_18
.LBB0_18:
	ldr	w2, [sp, #20]                   // 4-byte Folded Reload
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldr	w3, [sp, #4]                    // 4-byte Folded Reload
	bl	stbi__hdr_to_ldr
	stur	x0, [x29, #-8]
	b	.LBB0_22
.LBB0_19:
	ldur	x0, [x29, #-16]
	bl	stbi__tga_test
	cbz	x0, .LBB0_21
	b	.LBB0_20
.LBB0_20:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	ldur	w4, [x29, #-44]
	ldr	x5, [sp, #40]
	bl	stbi__tga_load
	stur	x0, [x29, #-8]
	b	.LBB0_22
.LBB0_21:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_22
.LBB0_22:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	stbi__load_main, .Lfunc_end0-stbi__load_main
                                        // -- End function
	.type	STBI_ORDER_RGB,@object          // @STBI_ORDER_RGB
	.bss
	.globl	STBI_ORDER_RGB
	.p2align	2
STBI_ORDER_RGB:
	.word	0                               // 0x0
	.size	STBI_ORDER_RGB, 4
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
	.addrsig_sym stbi__load_main
	.addrsig_sym memset
	.addrsig_sym stbi__jpeg_test
	.addrsig_sym stbi__jpeg_load
	.addrsig_sym stbi__png_test
	.addrsig_sym stbi__png_load
	.addrsig_sym stbi__bmp_test
	.addrsig_sym stbi__bmp_load
	.addrsig_sym stbi__gif_test
	.addrsig_sym stbi__gif_load
	.addrsig_sym stbi__psd_test
	.addrsig_sym stbi__psd_load
	.addrsig_sym stbi__pic_test
	.addrsig_sym stbi__pic_load
	.addrsig_sym stbi__pnm_test
	.addrsig_sym stbi__pnm_load
	.addrsig_sym stbi__hdr_test
	.addrsig_sym stbi__hdr_load
	.addrsig_sym stbi__hdr_to_ldr
	.addrsig_sym stbi__tga_test
	.addrsig_sym stbi__tga_load
	.addrsig_sym stbi__errpuc
	.addrsig_sym STBI_ORDER_RGB