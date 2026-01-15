	.text
	.p2align	2                               // -- Begin function stbi__tga_get_comp
	.type	stbi__tga_get_comp,@function
stbi__tga_get_comp:                     // @stbi__tga_get_comp
// %bb.0:
	sub	sp, sp, #32
	str	w0, [sp, #24]
	str	w1, [sp, #20]
	str	x2, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	str	wzr, [x8]
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #24]
	subs	w8, w8, #8
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #24
	b.hi	.LBB0_12
// %bb.3:
	ldr	x11, [sp]                       // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_4:
	adrp	x8, STBI_grey
	ldr	w8, [x8, :lo12:STBI_grey]
	str	w8, [sp, #28]
	b	.LBB0_13
.LBB0_5:
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x8, STBI_grey_alpha
	ldr	w8, [x8, :lo12:STBI_grey_alpha]
	str	w8, [sp, #28]
	b	.LBB0_13
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x9, [sp, #8]
	mov	w8, #1
	str	w8, [x9]
	b	.LBB0_10
.LBB0_10:
	adrp	x8, STBI_rgb
	ldr	w8, [x8, :lo12:STBI_rgb]
	str	w8, [sp, #28]
	b	.LBB0_13
.LBB0_11:
	ldr	w8, [sp, #24]
	mov	w9, #8
	sdiv	w8, w8, w9
	str	w8, [sp, #28]
	b	.LBB0_13
.LBB0_12:
	str	wzr, [sp, #28]
	b	.LBB0_13
.LBB0_13:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__tga_get_comp, .Lfunc_end0-stbi__tga_get_comp
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_11-.Ltmp0
                                        // -- End function
	.type	STBI_grey,@object               // @STBI_grey
	.bss
	.globl	STBI_grey
	.p2align	2
STBI_grey:
	.word	0                               // 0x0
	.size	STBI_grey, 4
	.type	STBI_grey_alpha,@object         // @STBI_grey_alpha
	.globl	STBI_grey_alpha
	.p2align	2
STBI_grey_alpha:
	.word	0                               // 0x0
	.size	STBI_grey_alpha, 4
	.type	STBI_rgb,@object                // @STBI_rgb
	.globl	STBI_rgb
	.p2align	2
STBI_rgb:
	.word	0                               // 0x0
	.size	STBI_rgb, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__tga_get_comp
	.addrsig_sym STBI_grey
	.addrsig_sym STBI_grey_alpha
	.addrsig_sym STBI_rgb