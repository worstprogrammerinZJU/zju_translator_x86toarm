	.text
	.p2align	2                               // -- Begin function stbi__zbuild_huffman
	.type	stbi__zbuild_huffman,@function
stbi__zbuild_huffman:                   // @stbi__zbuild_huffman
// %bb.0:
	sub	sp, sp, #224
	stp	x29, x30, [sp, #208]            // 16-byte Folded Spill
	add	x29, sp, #208
	sub	x8, x29, #24
	str	x8, [sp]                        // 8-byte Folded Spill
	str	x0, [x8, #8]
	str	x1, [x8]
	stur	w2, [x29, #-28]
	mov	w1, wzr
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	stur	wzr, [x29, #-36]
	add	x0, sp, #36
	mov	w2, #68
	bl	memset
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	x8, [x8, #8]
	ldr	x0, [x8]
	mov	w2, #8
	bl	memset
	stur	wzr, [x29, #-32]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8]
	ldursw	x9, [x29, #-32]
	ldr	x9, [x8, x9, lsl #3]
	add	x8, sp, #36
	add	x9, x8, x9, lsl #2
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_1
.LBB0_4:
	str	wzr, [sp, #36]
	mov	w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-32]
	subs	w8, w8, #16
	b.ge	.LBB0_10
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldursw	x9, [x29, #-32]
	add	x8, sp, #36
	ldr	w8, [x8, x9, lsl #2]
	ldur	w10, [x29, #-32]
	mov	w9, #1
	lsl	w9, w9, w10
	subs	w8, w8, w9
	b.le	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_30
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_5
.LBB0_10:
	stur	wzr, [x29, #-40]
	mov	w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_11
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-32]
	subs	w8, w8, #16
	b.ge	.LBB0_18
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldur	w8, [x29, #-40]
	ldursw	x11, [x29, #-32]
	add	x10, sp, #104
	str	w8, [x10, x11, lsl #2]
	ldursw	x8, [x29, #-40]
                                        // kill: def $w8 killed $w8 killed $x8
	ldr	x10, [x9, #8]
	ldr	x10, [x10, #8]
	ldursw	x11, [x29, #-32]
	str	w8, [x10, x11, lsl #2]
	ldursw	x8, [x29, #-36]
                                        // kill: def $w8 killed $w8 killed $x8
	ldr	x9, [x9, #8]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-32]
	str	w8, [x9, x10, lsl #2]
	ldur	w9, [x29, #-40]
	ldursw	x10, [x29, #-32]
	add	x8, sp, #36
	ldr	w10, [x8, x10, lsl #2]
	add	w9, w9, w10
	stur	w9, [x29, #-40]
	ldursw	x9, [x29, #-32]
	ldr	w8, [x8, x9, lsl #2]
	cbz	w8, .LBB0_16
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	w8, [x29, #-40]
	mov	w9, #1
	subs	w8, w8, #1
	ldur	w10, [x29, #-32]
	lsl	w9, w9, w10
	subs	w8, w8, w9
	b.lt	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_30
.LBB0_15:                               //   in Loop: Header=BB0_11 Depth=1
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldur	w8, [x29, #-40]
	ldur	w11, [x29, #-32]
	mov	w10, #16
	subs	w10, w10, w11
	lsl	w8, w8, w10
	ldr	x9, [x9, #8]
	ldr	x9, [x9, #24]
	ldursw	x10, [x29, #-32]
	str	w8, [x9, x10, lsl #2]
	ldur	w8, [x29, #-40]
	lsl	w8, w8, #1
	stur	w8, [x29, #-40]
	ldursw	x9, [x29, #-32]
	add	x8, sp, #36
	ldr	w9, [x8, x9, lsl #2]
	ldur	w8, [x29, #-36]
	add	w8, w8, w9
	stur	w8, [x29, #-36]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_11
.LBB0_18:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldr	x9, [x8, #24]
	mov	w8, #65536
	str	w8, [x9, #64]
	stur	wzr, [x29, #-32]
	b	.LBB0_19
.LBB0_19:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_23 Depth 2
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_29
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_19 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8]
	ldursw	x9, [x29, #-32]
	ldr	x8, [x8, x9, lsl #3]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #32]
	ldr	w8, [sp, #32]
	cbz	w8, .LBB0_27
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_19 Depth=1
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldrsw	x10, [sp, #32]
	add	x8, sp, #104
	ldr	w8, [x8, x10, lsl #2]
	ldr	x10, [x9, #8]
	ldr	x10, [x10, #8]
	ldrsw	x11, [sp, #32]
	ldr	w10, [x10, x11, lsl #2]
	subs	w8, w8, w10
	ldr	x10, [x9, #8]
	ldr	x10, [x10, #16]
	ldrsw	x11, [sp, #32]
	ldr	w10, [x10, x11, lsl #2]
	add	w8, w8, w10
	str	w8, [sp, #28]
	ldr	w10, [sp, #32]
	ldur	w8, [x29, #-32]
	orr	w10, w8, w10, lsl #9
                                        // implicit-def: $x8
	mov	w8, w10
	sxtw	x8, w8
	str	x8, [sp, #16]
	ldrsw	x8, [sp, #32]
	ldr	x10, [x9, #8]
	ldr	x10, [x10, #32]
	ldrsw	x11, [sp, #28]
	str	x8, [x10, x11, lsl #3]
	ldursw	x8, [x29, #-32]
	ldr	x9, [x9, #8]
	ldr	x9, [x9, #40]
	ldrsw	x10, [sp, #28]
	str	x8, [x9, x10, lsl #3]
	ldr	w8, [sp, #32]
	adrp	x9, STBI__ZFAST_BITS
	ldr	w9, [x9, :lo12:STBI__ZFAST_BITS]
	subs	w8, w8, w9
	b.gt	.LBB0_26
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_19 Depth=1
	ldrsw	x9, [sp, #32]
	add	x8, sp, #104
	ldr	w0, [x8, x9, lsl #2]
	ldr	w1, [sp, #32]
	bl	stbi__bit_reverse
	str	w0, [sp, #12]
	b	.LBB0_23
.LBB0_23:                               //   Parent Loop BB0_19 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	adrp	x9, STBI__ZFAST_BITS
	ldr	w10, [x9, :lo12:STBI__ZFAST_BITS]
	mov	w9, #1
	lsl	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_25
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_23 Depth=2
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	x8, [sp, #16]
                                        // kill: def $w8 killed $w8 killed $x8
	ldr	x9, [x9, #8]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	ldr	w9, [sp, #32]
	mov	w8, #1
	lsl	w9, w8, w9
	ldr	w8, [sp, #12]
	add	w8, w8, w9
	str	w8, [sp, #12]
	b	.LBB0_23
.LBB0_25:                               //   in Loop: Header=BB0_19 Depth=1
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_19 Depth=1
	ldrsw	x9, [sp, #32]
	add	x8, sp, #104
	add	x9, x8, x9, lsl #2
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_19 Depth=1
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_19 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_19
.LBB0_29:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_30
.LBB0_30:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #208]            // 16-byte Folded Reload
	add	sp, sp, #224
	ret
.Lfunc_end0:
	.size	stbi__zbuild_huffman, .Lfunc_end0-stbi__zbuild_huffman
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad sizes"
	.size	.L.str, 10
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt PNG"
	.size	.L.str.1, 12
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"bad codelengths"
	.size	.L.str.2, 16
	.type	STBI__ZFAST_BITS,@object        // @STBI__ZFAST_BITS
	.bss
	.globl	STBI__ZFAST_BITS
	.p2align	2
STBI__ZFAST_BITS:
	.word	0                               // 0x0
	.size	STBI__ZFAST_BITS, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__zbuild_huffman
	.addrsig_sym memset
	.addrsig_sym stbi__err
	.addrsig_sym stbi__bit_reverse
	.addrsig_sym STBI__ZFAST_BITS