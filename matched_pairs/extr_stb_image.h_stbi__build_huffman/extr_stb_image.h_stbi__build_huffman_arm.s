	.text
	.p2align	2                               // -- Begin function stbi__build_huffman
	.type	stbi__build_huffman,@function
stbi__build_huffman:                    // @stbi__build_huffman
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	wzr, [sp, #28]
	stur	wzr, [x29, #-28]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldur	w8, [x29, #-28]
	subs	w8, w8, #16
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #32]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #32]
	ldur	x9, [x29, #-24]
	ldursw	x10, [x29, #-28]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-28]
	add	w9, w8, #1
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
                                        // kill: def $w8 killed $w8 killed $x8
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #28]
	mov	w11, w10
	add	w11, w11, #1
	str	w11, [sp, #28]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_1
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldr	x9, [x8]
	ldrsw	x10, [sp, #28]
	mov	w8, wzr
	str	w8, [x9, x10, lsl #2]
	str	wzr, [sp, #24]
	str	wzr, [sp, #28]
	mov	w8, #1
	str	w8, [sp, #32]
	b	.LBB0_9
.LBB0_9:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_12 Depth 2
	ldr	w8, [sp, #32]
	subs	w8, w8, #16
	b.gt	.LBB0_19
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #32]
	str	w8, [x9, x10, lsl #2]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.ne	.LBB0_17
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   Parent Loop BB0_9 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=2
	ldr	w8, [sp, #24]
	add	w9, w8, #1
	str	w9, [sp, #24]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #28]
	mov	w11, w10
	add	w11, w11, #1
	str	w11, [sp, #28]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_12
.LBB0_14:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #24]
	mov	w9, #1
	subs	w8, w8, #1
	ldr	w10, [sp, #32]
	lsl	w9, w9, w10
	subs	w8, w8, w9
	b.lo	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_30
.LBB0_16:                               //   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #24]
	ldr	w10, [sp, #32]
	mov	w9, #16
	subs	w9, w9, w10
	lsl	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #24]
	ldrsw	x10, [sp, #32]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #24]
	lsl	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_9
.LBB0_19:
	ldur	x8, [x29, #-16]
	ldr	x9, [x8, #24]
	ldrsw	x10, [sp, #32]
	mov	w8, #-1
	str	w8, [x9, x10, lsl #2]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #32]
	adrp	x8, FAST_BITS
	ldr	w9, [x8, :lo12:FAST_BITS]
	mov	w8, #1
	lsl	w2, w8, w9
	mov	w1, #255
	bl	memset
	stur	wzr, [x29, #-28]
	b	.LBB0_20
.LBB0_20:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_23 Depth 2
	ldur	w8, [x29, #-28]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_29
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_20 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-28]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	adrp	x9, FAST_BITS
	ldr	w9, [x9, :lo12:FAST_BITS]
	subs	w8, w8, w9
	b.gt	.LBB0_27
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_20 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-28]
	ldr	w9, [x8, x9, lsl #2]
	adrp	x8, FAST_BITS
	ldr	w10, [x8, :lo12:FAST_BITS]
	ldr	w11, [sp, #20]
	subs	w10, w10, w11
	lsl	w9, w9, w10
	str	w9, [sp, #16]
	ldr	w8, [x8, :lo12:FAST_BITS]
	ldr	w9, [sp, #20]
	subs	w9, w8, w9
	mov	w8, #1
	lsl	w8, w8, w9
	str	w8, [sp, #12]
	str	wzr, [sp, #32]
	b	.LBB0_23
.LBB0_23:                               //   Parent Loop BB0_20 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #32]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_26
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_23 Depth=2
	ldursw	x8, [x29, #-28]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w10, [sp, #16]
	ldr	w11, [sp, #32]
	add	w10, w10, w11
	str	x8, [x9, w10, sxtw #3]
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_23 Depth=2
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_23
.LBB0_26:                               //   in Loop: Header=BB0_20 Depth=1
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_20 Depth=1
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_20 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_20
.LBB0_29:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_30
.LBB0_30:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	stbi__build_huffman, .Lfunc_end0-stbi__build_huffman
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad code lengths"
	.size	.L.str, 17
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt JPEG"
	.size	.L.str.1, 13
	.type	FAST_BITS,@object               // @FAST_BITS
	.bss
	.globl	FAST_BITS
	.p2align	2
FAST_BITS:
	.word	0                               // 0x0
	.size	FAST_BITS, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__build_huffman
	.addrsig_sym stbi__err
	.addrsig_sym memset
	.addrsig_sym FAST_BITS