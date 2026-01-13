	.text
	.globl	save_image_options              // -- Begin function save_image_options
	.p2align	2
	.type	save_image_options,@function
save_image_options:                     // @save_image_options
// %bb.0:
	sub	sp, sp, #352
	stp	x29, x30, [sp, #320]            // 16-byte Folded Spill
	str	x28, [sp, #336]                 // 8-byte Folded Spill
	add	x29, sp, #320
	sub	x8, x29, #16
	str	x8, [sp]                        // 8-byte Folded Spill
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	str	x1, [x8, #8]
	str	x2, [x8]
	stur	w3, [x29, #-20]
	ldr	x8, [x8]
	adrp	x9, PNG
	ldr	x9, [x9, :lo12:PNG]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x2, [x8, #8]
	add	x0, sp, #44
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	sprintf
	b	.LBB0_12
.LBB0_2:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8]
	adrp	x9, BMP
	ldr	x9, [x9, :lo12:BMP]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x2, [x8, #8]
	add	x0, sp, #44
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	sprintf
	b	.LBB0_11
.LBB0_4:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8]
	adrp	x9, TGA
	ldr	x9, [x9, :lo12:TGA]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x2, [x8, #8]
	add	x0, sp, #44
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	sprintf
	b	.LBB0_10
.LBB0_6:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8]
	adrp	x9, JPG
	ldr	x9, [x9, :lo12:JPG]
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x2, [x8, #8]
	add	x0, sp, #44
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	sprintf
	b	.LBB0_9
.LBB0_8:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x2, [x8, #8]
	add	x0, sp, #44
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	sprintf
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x9]
	ldr	w10, [x9, #4]
	mul	w8, w8, w10
	ldr	w9, [x9, #8]
	mul	w0, w8, w9
	mov	w1, #1
	bl	calloc
	str	x0, [sp, #32]
	str	wzr, [sp, #24]
	b	.LBB0_13
.LBB0_13:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_15 Depth 2
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #24]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_20
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_13 Depth=1
	str	wzr, [sp, #28]
	b	.LBB0_15
.LBB0_15:                               //   Parent Loop BB0_13 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	w8, [sp, #28]
	ldr	w9, [x10]
	ldr	w10, [x10, #4]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_18
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_15 Depth=2
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	ldr	x8, [x11, #16]
	ldr	w9, [sp, #28]
	ldr	w10, [sp, #24]
	ldr	w12, [x11]
	mul	w10, w10, w12
	ldr	w12, [x11, #4]
	mul	w10, w10, w12
	add	w9, w9, w10
	ldr	w9, [x8, w9, sxtw #2]
	mov	w8, #255
	mul	w8, w8, w9
	ldr	x9, [sp, #32]
	ldr	w10, [sp, #28]
	ldr	w11, [x11, #8]
	mul	w10, w10, w11
	ldr	w11, [sp, #24]
	add	w10, w10, w11
	strb	w8, [x9, w10, sxtw]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_15 Depth=2
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_15
.LBB0_18:                               //   in Loop: Header=BB0_13 Depth=1
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_13
.LBB0_20:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	wzr, [sp, #20]
	ldr	x8, [x8]
	adrp	x9, PNG
	ldr	x9, [x9, :lo12:PNG]
	subs	x8, x8, x9
	b.ne	.LBB0_22
	b	.LBB0_21
.LBB0_21:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w1, [x9]
	ldr	w2, [x9, #4]
	ldr	w3, [x9, #8]
	ldr	x4, [sp, #32]
	ldr	w8, [x9]
	ldr	w9, [x9, #8]
	mul	w5, w8, w9
	add	x0, sp, #44
	bl	stbi_write_png
	str	w0, [sp, #20]
	b	.LBB0_31
.LBB0_22:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8]
	adrp	x9, BMP
	ldr	x9, [x9, :lo12:BMP]
	subs	x8, x8, x9
	b.ne	.LBB0_24
	b	.LBB0_23
.LBB0_23:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w1, [x8]
	ldr	w2, [x8, #4]
	ldr	w3, [x8, #8]
	ldr	x4, [sp, #32]
	add	x0, sp, #44
	bl	stbi_write_bmp
	str	w0, [sp, #20]
	b	.LBB0_30
.LBB0_24:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8]
	adrp	x9, TGA
	ldr	x9, [x9, :lo12:TGA]
	subs	x8, x8, x9
	b.ne	.LBB0_26
	b	.LBB0_25
.LBB0_25:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w1, [x8]
	ldr	w2, [x8, #4]
	ldr	w3, [x8, #8]
	ldr	x4, [sp, #32]
	add	x0, sp, #44
	bl	stbi_write_tga
	str	w0, [sp, #20]
	b	.LBB0_29
.LBB0_26:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8]
	adrp	x9, JPG
	ldr	x9, [x9, :lo12:JPG]
	subs	x8, x8, x9
	b.ne	.LBB0_28
	b	.LBB0_27
.LBB0_27:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w1, [x8]
	ldr	w2, [x8, #4]
	ldr	w3, [x8, #8]
	ldr	x4, [sp, #32]
	ldur	w5, [x29, #-20]
	add	x0, sp, #44
	bl	stbi_write_jpg
	str	w0, [sp, #20]
	b	.LBB0_28
.LBB0_28:
	b	.LBB0_29
.LBB0_29:
	b	.LBB0_30
.LBB0_30:
	b	.LBB0_31
.LBB0_31:
	ldr	x0, [sp, #32]
	bl	free
	ldr	w8, [sp, #20]
	cbnz	w8, .LBB0_33
	b	.LBB0_32
.LBB0_32:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	add	x2, sp, #44
	bl	fprintf
	b	.LBB0_33
.LBB0_33:
	ldr	x28, [sp, #336]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #320]            // 16-byte Folded Reload
	add	sp, sp, #352
	ret
.Lfunc_end0:
	.size	save_image_options, .Lfunc_end0-save_image_options
                                        // -- End function
	.type	PNG,@object                     // @PNG
	.bss
	.globl	PNG
	.p2align	3
PNG:
	.xword	0                               // 0x0
	.size	PNG, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s.png"
	.size	.L.str, 7
	.type	BMP,@object                     // @BMP
	.bss
	.globl	BMP
	.p2align	3
BMP:
	.xword	0                               // 0x0
	.size	BMP, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s.bmp"
	.size	.L.str.1, 7
	.type	TGA,@object                     // @TGA
	.bss
	.globl	TGA
	.p2align	3
TGA:
	.xword	0                               // 0x0
	.size	TGA, 8
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%s.tga"
	.size	.L.str.2, 7
	.type	JPG,@object                     // @JPG
	.bss
	.globl	JPG
	.p2align	3
JPG:
	.xword	0                               // 0x0
	.size	JPG, 8
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"%s.jpg"
	.size	.L.str.3, 7
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Failed to write image %s\n"
	.size	.L.str.4, 26
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sprintf
	.addrsig_sym calloc
	.addrsig_sym stbi_write_png
	.addrsig_sym stbi_write_bmp
	.addrsig_sym stbi_write_tga
	.addrsig_sym stbi_write_jpg
	.addrsig_sym free
	.addrsig_sym fprintf
	.addrsig_sym PNG
	.addrsig_sym BMP
	.addrsig_sym TGA
	.addrsig_sym JPG
	.addrsig_sym stderr