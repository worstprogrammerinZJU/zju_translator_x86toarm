	.text
	.p2align	2                               // -- Begin function stbi__parse_huffman_block
	.type	stbi__parse_huffman_block,@function
stbi__parse_huffman_block:              // @stbi__parse_huffman_block
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_32 Depth 2
                                        //     Child Loop BB0_26 Depth 2
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	add	x1, x8, #28
	bl	stbi__zhuffman_decode
	stur	w0, [x29, #-28]
	ldur	w8, [x29, #-28]
	subs	w8, w8, #256
	b.ge	.LBB0_9
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	subs	w8, w8, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_38
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.lo	.LBB0_8
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	mov	w2, #1
	bl	stbi__zexpand
	cbnz	w0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	stur	wzr, [x29, #-4]
	b	.LBB0_38
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	ldur	x9, [x29, #-24]
	add	x10, x9, #1
	stur	x10, [x29, #-24]
	strb	w8, [x9]
	b	.LBB0_37
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	subs	w8, w8, #256
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_38
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	subs	w8, w8, #257
	stur	w8, [x29, #-28]
	adrp	x8, stbi__zlength_base
	ldr	x8, [x8, :lo12:stbi__zlength_base]
	ldursw	x9, [x29, #-28]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #20]
	adrp	x8, stbi__zlength_extra
	ldr	x8, [x8, :lo12:stbi__zlength_extra]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	adrp	x8, stbi__zlength_extra
	ldr	x8, [x8, :lo12:stbi__zlength_extra]
	ldursw	x9, [x29, #-28]
	ldr	x1, [x8, x9, lsl #3]
	bl	stbi__zreceive
	ldrsw	x8, [sp, #20]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #20]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	add	x1, x8, #24
	bl	stbi__zhuffman_decode
	stur	w0, [x29, #-28]
	ldur	w8, [x29, #-28]
	subs	w8, w8, #0
	b.ge	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_38
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, stbi__zdist_base
	ldr	x8, [x8, :lo12:stbi__zdist_base]
	ldursw	x9, [x29, #-28]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #16]
	adrp	x8, stbi__zdist_extra
	ldr	x8, [x8, :lo12:stbi__zdist_extra]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	adrp	x8, stbi__zdist_extra
	ldr	x8, [x8, :lo12:stbi__zdist_extra]
	ldursw	x9, [x29, #-28]
	ldr	x1, [x8, x9, lsl #3]
	bl	stbi__zreceive
	ldrsw	x8, [sp, #16]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #16]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	ldrsw	x9, [sp, #16]
	subs	x8, x8, x9
	b.ge	.LBB0_19
	b	.LBB0_18
.LBB0_18:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_38
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #20]
	add	x8, x8, x9
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.ls	.LBB0_23
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	w2, [sp, #20]
	bl	stbi__zexpand
	cbnz	w0, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	stur	wzr, [x29, #-4]
	b	.LBB0_38
.LBB0_22:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #16]
	subs	x8, x8, x9
	str	x8, [sp, #24]
	ldr	w8, [sp, #16]
	subs	w8, w8, #1
	b.ne	.LBB0_30
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_29
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_26
.LBB0_26:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	ldur	x9, [x29, #-24]
	add	x10, x9, #1
	stur	x10, [x29, #-24]
	strb	w8, [x9]
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_26 Depth=2
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	cbnz	w8, .LBB0_26
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_36
.LBB0_30:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_35
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_32
.LBB0_32:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #24]
	add	x9, x8, #4
	str	x9, [sp, #24]
	ldr	w8, [x8]
	ldur	x9, [x29, #-24]
	add	x10, x9, #1
	stur	x10, [x29, #-24]
	strb	w8, [x9]
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_32 Depth=2
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	cbnz	w8, .LBB0_32
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_36
.LBB0_36:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_38:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	stbi__parse_huffman_block, .Lfunc_end0-stbi__parse_huffman_block
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad huffman code"
	.size	.L.str, 17
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt PNG"
	.size	.L.str.1, 12
	.type	stbi__zlength_base,@object      // @stbi__zlength_base
	.bss
	.globl	stbi__zlength_base
	.p2align	3
stbi__zlength_base:
	.xword	0
	.size	stbi__zlength_base, 8
	.type	stbi__zlength_extra,@object     // @stbi__zlength_extra
	.globl	stbi__zlength_extra
	.p2align	3
stbi__zlength_extra:
	.xword	0
	.size	stbi__zlength_extra, 8
	.type	stbi__zdist_base,@object        // @stbi__zdist_base
	.globl	stbi__zdist_base
	.p2align	3
stbi__zdist_base:
	.xword	0
	.size	stbi__zdist_base, 8
	.type	stbi__zdist_extra,@object       // @stbi__zdist_extra
	.globl	stbi__zdist_extra
	.p2align	3
stbi__zdist_extra:
	.xword	0
	.size	stbi__zdist_extra, 8
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"bad dist"
	.size	.L.str.2, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__parse_huffman_block
	.addrsig_sym stbi__zhuffman_decode
	.addrsig_sym stbi__err
	.addrsig_sym stbi__zexpand
	.addrsig_sym stbi__zreceive
	.addrsig_sym stbi__zlength_base
	.addrsig_sym stbi__zlength_extra
	.addrsig_sym stbi__zdist_base
	.addrsig_sym stbi__zdist_extra