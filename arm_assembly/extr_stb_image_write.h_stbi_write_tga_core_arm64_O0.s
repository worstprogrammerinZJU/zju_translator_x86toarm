	.text
	.p2align	2                               // -- Begin function stbi_write_tga_core
	.type	stbi_write_tga_core,@function
stbi_write_tga_core:                    // @stbi_write_tga_core
// %bb.0:
	sub	sp, sp, #304
	stp	x29, x30, [sp, #272]            // 16-byte Folded Spill
	str	x28, [sp, #288]                 // 8-byte Folded Spill
	add	x29, sp, #272
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	w2, [x29, #-24]
	stur	w3, [x29, #-28]
	stur	x4, [x29, #-40]
	ldur	w9, [x29, #-28]
	mov	w8, #1
	subs	w9, w9, #2
	stur	w8, [x29, #-120]                // 4-byte Folded Spill
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-28]
	subs	w8, w8, #4
	cset	w8, eq
	stur	w8, [x29, #-120]                // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-120]                // 4-byte Folded Reload
	and	w8, w8, #0x1
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-44]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-28]
	subs	w8, w8, #1
	stur	w8, [x29, #-124]                // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-124]                // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldur	w8, [x29, #-124]                // 4-byte Folded Reload
	stur	w8, [x29, #-48]
	ldur	w10, [x29, #-48]
	mov	w9, #2
	mov	w8, #3
	subs	w10, w10, #2
	csel	w8, w8, w9, lt
	stur	w8, [x29, #-52]
	ldur	w8, [x29, #-24]
	tbnz	w8, #31, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #0
	b.ge	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	stur	wzr, [x29, #-4]
	b	.LBB0_53
.LBB0_8:
	adrp	x8, stbi_write_tga_with_rle
	ldr	w8, [x8, :lo12:stbi_write_tga_with_rle]
	cbnz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-16]
	ldur	w3, [x29, #-20]
	ldur	w4, [x29, #-24]
	ldur	w5, [x29, #-28]
	ldur	x7, [x29, #-40]
	ldur	w14, [x29, #-44]
	ldur	w13, [x29, #-52]
	ldur	w12, [x29, #-20]
	ldur	w11, [x29, #-24]
	ldur	w8, [x29, #-48]
	ldur	w9, [x29, #-44]
	add	w8, w8, w9
	lsl	w10, w8, #3
	ldur	w8, [x29, #-44]
	lsl	w8, w8, #3
	mov	x9, sp
	str	x9, [sp, #136]                  // 8-byte Folded Spill
	str	w14, [x9]
	mov	w6, wzr
	str	wzr, [x9, #8]
	adrp	x14, .L.str
	add	x14, x14, :lo12:.L.str
	str	x14, [x9, #16]
	str	wzr, [x9, #24]
	str	wzr, [x9, #32]
	str	w13, [x9, #40]
	str	wzr, [x9, #48]
	str	wzr, [x9, #56]
	str	wzr, [x9, #64]
	str	wzr, [x9, #72]
	str	wzr, [x9, #80]
	str	w12, [x9, #88]
	str	w11, [x9, #96]
	str	w10, [x9, #104]
	str	w8, [x9, #112]
	mov	w2, #-1
	mov	w1, w2
	bl	stbiw__outfile
	stur	w0, [x29, #-4]
	b	.LBB0_53
.LBB0_10:
	ldur	x0, [x29, #-16]
	ldur	w8, [x29, #-52]
	add	w4, w8, #8
	ldur	w12, [x29, #-20]
	ldur	w11, [x29, #-24]
	ldur	w8, [x29, #-48]
	ldur	w9, [x29, #-44]
	add	w8, w8, w9
	lsl	w10, w8, #3
	ldur	w8, [x29, #-44]
	lsl	w8, w8, #3
	mov	x9, sp
	mov	w7, wzr
	str	wzr, [x9]
	str	wzr, [x9, #8]
	str	w12, [x9, #16]
	str	w11, [x9, #24]
	str	w10, [x9, #32]
	str	w8, [x9, #40]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, w7
	mov	w3, w7
	mov	w5, w7
	mov	w6, w7
	bl	stbiw__writef
	adrp	x8, stbi__flip_vertically_on_write
	ldr	x8, [x8, :lo12:stbi__flip_vertically_on_write]
	cbz	x8, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	stur	wzr, [x29, #-60]
	ldur	w8, [x29, #-24]
	stur	w8, [x29, #-68]
	mov	w8, #1
	stur	w8, [x29, #-72]
	b	.LBB0_13
.LBB0_12:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #1
	stur	w8, [x29, #-60]
	mov	w8, #-1
	stur	w8, [x29, #-68]
	stur	w8, [x29, #-72]
	b	.LBB0_13
.LBB0_13:
	b	.LBB0_14
.LBB0_14:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_16 Depth 2
                                        //       Child Loop BB0_30 Depth 3
                                        //       Child Loop BB0_20 Depth 3
                                        //       Child Loop BB0_42 Depth 3
	ldur	w8, [x29, #-60]
	ldur	w9, [x29, #-68]
	subs	w8, w8, w9
	b.eq	.LBB0_51
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_14 Depth=1
	ldur	x8, [x29, #-40]
	ldur	w9, [x29, #-60]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw
	stur	x8, [x29, #-80]
	stur	wzr, [x29, #-56]
	b	.LBB0_16
.LBB0_16:                               //   Parent Loop BB0_14 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_30 Depth 3
                                        //       Child Loop BB0_20 Depth 3
                                        //       Child Loop BB0_42 Depth 3
	ldur	w8, [x29, #-56]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_49
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_16 Depth=2
	ldur	x8, [x29, #-80]
	ldur	w9, [x29, #-56]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw
	stur	x8, [x29, #-96]
	mov	w8, #1
	stur	w8, [x29, #-100]
	stur	w8, [x29, #-84]
	ldur	w8, [x29, #-56]
	ldur	w9, [x29, #-20]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_40
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_16 Depth=2
	ldur	w8, [x29, #-84]
	add	w8, w8, #1
	stur	w8, [x29, #-84]
	ldur	x0, [x29, #-96]
	ldur	x8, [x29, #-80]
	ldur	w9, [x29, #-56]
	add	w9, w9, #1
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	add	x1, x8, w9, sxtw
	ldur	w2, [x29, #-28]
	bl	memcmp
	stur	w0, [x29, #-100]
	ldur	w8, [x29, #-100]
	cbz	w8, .LBB0_29
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_16 Depth=2
	ldur	x8, [x29, #-96]
	stur	x8, [x29, #-112]
	ldur	w8, [x29, #-56]
	add	w8, w8, #2
	stur	w8, [x29, #-64]
	b	.LBB0_20
.LBB0_20:                               //   Parent Loop BB0_14 Depth=1
                                        //     Parent Loop BB0_16 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w9, [x29, #-64]
	ldur	w10, [x29, #-20]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #132]                  // 4-byte Folded Spill
	b.ge	.LBB0_22
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_20 Depth=3
	ldur	w8, [x29, #-84]
	subs	w8, w8, #128
	cset	w8, lt
	str	w8, [sp, #132]                  // 4-byte Folded Spill
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_20 Depth=3
	ldr	w8, [sp, #132]                  // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_28
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_20 Depth=3
	ldur	x0, [x29, #-112]
	ldur	x8, [x29, #-80]
	ldur	w9, [x29, #-64]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	add	x1, x8, w9, sxtw
	ldur	w2, [x29, #-28]
	bl	memcmp
	cbz	w0, .LBB0_25
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_20 Depth=3
	ldursw	x9, [x29, #-28]
	ldur	x8, [x29, #-112]
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	ldur	w8, [x29, #-84]
	add	w8, w8, #1
	stur	w8, [x29, #-84]
	b	.LBB0_26
.LBB0_25:                               //   in Loop: Header=BB0_16 Depth=2
	ldur	w8, [x29, #-84]
	subs	w8, w8, #1
	stur	w8, [x29, #-84]
	b	.LBB0_28
.LBB0_26:                               //   in Loop: Header=BB0_20 Depth=3
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_20 Depth=3
	ldur	w8, [x29, #-64]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	b	.LBB0_20
.LBB0_28:                               //   in Loop: Header=BB0_16 Depth=2
	b	.LBB0_39
.LBB0_29:                               //   in Loop: Header=BB0_16 Depth=2
	ldur	w8, [x29, #-56]
	add	w8, w8, #2
	stur	w8, [x29, #-64]
	b	.LBB0_30
.LBB0_30:                               //   Parent Loop BB0_14 Depth=1
                                        //     Parent Loop BB0_16 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w9, [x29, #-64]
	ldur	w10, [x29, #-20]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #128]                  // 4-byte Folded Spill
	b.ge	.LBB0_32
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_30 Depth=3
	ldur	w8, [x29, #-84]
	subs	w8, w8, #128
	cset	w8, lt
	str	w8, [sp, #128]                  // 4-byte Folded Spill
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_30 Depth=3
	ldr	w8, [sp, #128]                  // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_38
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_30 Depth=3
	ldur	x0, [x29, #-96]
	ldur	x8, [x29, #-80]
	ldur	w9, [x29, #-64]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	add	x1, x8, w9, sxtw
	ldur	w2, [x29, #-28]
	bl	memcmp
	cbnz	w0, .LBB0_35
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_30 Depth=3
	ldur	w8, [x29, #-84]
	add	w8, w8, #1
	stur	w8, [x29, #-84]
	b	.LBB0_36
.LBB0_35:                               //   in Loop: Header=BB0_16 Depth=2
	b	.LBB0_38
.LBB0_36:                               //   in Loop: Header=BB0_30 Depth=3
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_30 Depth=3
	ldur	w8, [x29, #-64]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	b	.LBB0_30
.LBB0_38:                               //   in Loop: Header=BB0_16 Depth=2
	b	.LBB0_39
.LBB0_39:                               //   in Loop: Header=BB0_16 Depth=2
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_16 Depth=2
	ldur	w8, [x29, #-100]
	cbz	w8, .LBB0_46
	b	.LBB0_41
.LBB0_41:                               //   in Loop: Header=BB0_16 Depth=2
	ldur	w8, [x29, #-84]
	mov	w9, #1
	str	w9, [sp, #124]                  // 4-byte Folded Spill
	subs	w0, w8, #1
	bl	STBIW_UCHAR
	ldr	w2, [sp, #124]                  // 4-byte Folded Reload
	sub	x1, x29, #113
	sturb	w0, [x29, #-113]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w0, [x9]
	blr	x8
	stur	wzr, [x29, #-64]
	b	.LBB0_42
.LBB0_42:                               //   Parent Loop BB0_14 Depth=1
                                        //     Parent Loop BB0_16 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-64]
	ldur	w9, [x29, #-84]
	subs	w8, w8, w9
	b.ge	.LBB0_45
	b	.LBB0_43
.LBB0_43:                               //   in Loop: Header=BB0_42 Depth=3
	ldur	x0, [x29, #-16]
	ldur	w2, [x29, #-28]
	ldur	w3, [x29, #-44]
	ldur	x8, [x29, #-96]
	ldur	w9, [x29, #-64]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	add	x5, x8, w9, sxtw
	mov	w1, #-1
	mov	w4, wzr
	bl	stbiw__write_pixel
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_42 Depth=3
	ldur	w8, [x29, #-64]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	b	.LBB0_42
.LBB0_45:                               //   in Loop: Header=BB0_16 Depth=2
	b	.LBB0_47
.LBB0_46:                               //   in Loop: Header=BB0_16 Depth=2
	ldur	w8, [x29, #-84]
	subs	w0, w8, #129
	bl	STBIW_UCHAR
	sub	x1, x29, #114
	sturb	w0, [x29, #-114]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w0, [x9]
	mov	w2, #1
	blr	x8
	ldur	x0, [x29, #-16]
	ldur	w2, [x29, #-28]
	ldur	w3, [x29, #-44]
	ldur	x5, [x29, #-96]
	mov	w1, #-1
	mov	w4, wzr
	bl	stbiw__write_pixel
	b	.LBB0_47
.LBB0_47:                               //   in Loop: Header=BB0_16 Depth=2
	b	.LBB0_48
.LBB0_48:                               //   in Loop: Header=BB0_16 Depth=2
	ldur	w9, [x29, #-84]
	ldur	w8, [x29, #-56]
	add	w8, w8, w9
	stur	w8, [x29, #-56]
	b	.LBB0_16
.LBB0_49:                               //   in Loop: Header=BB0_14 Depth=1
	b	.LBB0_50
.LBB0_50:                               //   in Loop: Header=BB0_14 Depth=1
	ldur	w9, [x29, #-72]
	ldur	w8, [x29, #-60]
	add	w8, w8, w9
	stur	w8, [x29, #-60]
	b	.LBB0_14
.LBB0_51:
	b	.LBB0_52
.LBB0_52:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_53
.LBB0_53:
	ldur	w0, [x29, #-4]
	ldr	x28, [sp, #288]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #272]            // 16-byte Folded Reload
	add	sp, sp, #304
	ret
.Lfunc_end0:
	.size	stbi_write_tga_core, .Lfunc_end0-stbi_write_tga_core
                                        // -- End function
	.type	stbi_write_tga_with_rle,@object // @stbi_write_tga_with_rle
	.bss
	.globl	stbi_write_tga_with_rle
	.p2align	2
stbi_write_tga_with_rle:
	.word	0                               // 0x0
	.size	stbi_write_tga_with_rle, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"111 221 2222 11"
	.size	.L.str, 16
	.type	stbi__flip_vertically_on_write,@object // @stbi__flip_vertically_on_write
	.bss
	.globl	stbi__flip_vertically_on_write
	.p2align	3
stbi__flip_vertically_on_write:
	.xword	0                               // 0x0
	.size	stbi__flip_vertically_on_write, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi_write_tga_core
	.addrsig_sym stbiw__outfile
	.addrsig_sym stbiw__writef
	.addrsig_sym memcmp
	.addrsig_sym STBIW_UCHAR
	.addrsig_sym stbiw__write_pixel
	.addrsig_sym stbi_write_tga_with_rle
	.addrsig_sym stbi__flip_vertically_on_write