	.text
	.p2align	2                               // -- Begin function stbi__jpeg_decode_block_prog_ac
	.type	stbi__jpeg_decode_block_prog_ac,@function
stbi__jpeg_decode_block_prog_ac:        // @stbi__jpeg_decode_block_prog_ac
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_74
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_23
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #16]
	stur	w8, [x29, #-48]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	cbz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #20]
	subs	w8, w8, #1
	str	w8, [x9, #20]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_74
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-44]
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #28]
	subs	w8, w8, #16
	b.ge	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__grow_buffer_unsafe
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #32]
	adrp	x9, FAST_BITS
	ldr	w11, [x9, :lo12:FAST_BITS]
	mov	w10, #32
	subs	w10, w10, w11
	asr	w8, w8, w10
	ldr	w10, [x9, :lo12:FAST_BITS]
	mov	w9, #1
	lsl	w9, w9, w10
	subs	w9, w9, #1
	and	w8, w8, w9
	str	w8, [sp, #56]
	ldur	x8, [x29, #-40]
	ldrsw	x9, [sp, #56]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #52]
	ldr	w8, [sp, #52]
	cbz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #52]
	asr	w8, w8, #4
	and	w9, w8, #0xf
	ldur	w8, [x29, #-44]
	add	w8, w8, w9
	stur	w8, [x29, #-44]
	ldr	w8, [sp, #52]
	and	w8, w8, #0xf
	str	w8, [sp, #48]
	ldr	w10, [sp, #48]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #32]
	lsl	w8, w8, w10
	str	w8, [x9, #32]
	ldr	w10, [sp, #48]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #28]
	subs	w8, w8, w10
	str	w8, [x9, #28]
	adrp	x8, stbi__jpeg_dezigzag
	ldr	x8, [x8, :lo12:stbi__jpeg_dezigzag]
	ldursw	x9, [x29, #-44]
	mov	w10, w9
	add	w10, w10, #1
	stur	w10, [x29, #-44]
	ldr	x8, [x8, x9, lsl #3]
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-52]
	ldr	w8, [sp, #52]
	asr	w8, w8, #8
	ldur	w9, [x29, #-48]
	lsl	w8, w8, w9
	ldur	x9, [x29, #-24]
	ldur	w10, [x29, #-52]
                                        // kill: def $x10 killed $w10
	strh	w8, [x9, x10, lsl #1]
	b	.LBB0_20
.LBB0_10:                               //   in Loop: Header=BB0_6 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	bl	stbi__jpeg_huff_decode
	str	w0, [sp, #44]
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	b.ge	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_74
.LBB0_12:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #44]
	and	w8, w8, #0xf
	str	w8, [sp, #48]
	ldr	w8, [sp, #44]
	asr	w8, w8, #4
	str	w8, [sp, #52]
	ldr	w8, [sp, #48]
	cbnz	w8, .LBB0_18
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #52]
	subs	w8, w8, #15
	b.ge	.LBB0_17
	b	.LBB0_14
.LBB0_14:
	ldr	w9, [sp, #52]
	mov	w8, #1
	lsl	w8, w8, w9
	ldur	x9, [x29, #-16]
	str	w8, [x9, #20]
	ldr	w8, [sp, #52]
	cbz	w8, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #52]
	bl	stbi__jpeg_get_bits
	ldur	x9, [x29, #-16]
	ldrsw	x8, [x9, #20]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9, #20]
	b	.LBB0_16
.LBB0_16:
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #20]
	subs	w8, w8, #1
	str	w8, [x9, #20]
	b	.LBB0_22
.LBB0_17:                               //   in Loop: Header=BB0_6 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #16
	stur	w8, [x29, #-44]
	b	.LBB0_19
.LBB0_18:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w9, [sp, #52]
	ldur	w8, [x29, #-44]
	add	w8, w8, w9
	stur	w8, [x29, #-44]
	adrp	x8, stbi__jpeg_dezigzag
	ldr	x8, [x8, :lo12:stbi__jpeg_dezigzag]
	ldursw	x9, [x29, #-44]
	mov	w10, w9
	add	w10, w10, #1
	stur	w10, [x29, #-44]
	ldr	x8, [x8, x9, lsl #3]
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-52]
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #48]
	bl	stbi__extend_receive
	ldur	w8, [x29, #-48]
	lsl	w8, w0, w8
	ldur	x9, [x29, #-24]
	ldur	w10, [x29, #-52]
                                        // kill: def $x10 killed $w10
	strh	w8, [x9, x10, lsl #1]
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_6 Depth=1
	ldur	w8, [x29, #-44]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #24]
	subs	w8, w8, w9
	b.le	.LBB0_6
	b	.LBB0_22
.LBB0_22:
	b	.LBB0_73
.LBB0_23:
	ldur	x8, [x29, #-16]
	ldr	w9, [x8, #16]
	mov	w8, #1
	lsl	w8, w8, w9
	strh	w8, [sp, #42]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	cbz	w8, .LBB0_38
	b	.LBB0_24
.LBB0_24:
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #20]
	subs	w8, w8, #1
	str	w8, [x9, #20]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-44]
	b	.LBB0_25
.LBB0_25:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-44]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #24]
	subs	w8, w8, w9
	b.gt	.LBB0_37
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_25 Depth=1
	ldur	x8, [x29, #-24]
	adrp	x9, stbi__jpeg_dezigzag
	ldr	x9, [x9, :lo12:stbi__jpeg_dezigzag]
	ldursw	x10, [x29, #-44]
	ldr	x9, [x9, x10, lsl #3]
	add	x8, x8, x9, lsl #1
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	ldrsh	w8, [x8]
	cbz	w8, .LBB0_35
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_25 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__jpeg_get_bit
	cbz	x0, .LBB0_34
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_25 Depth=1
	ldr	x8, [sp, #32]
	ldrsh	w8, [x8]
	ldrsh	w9, [sp, #42]
	and	w8, w8, w9
	cbnz	w8, .LBB0_33
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_25 Depth=1
	ldr	x8, [sp, #32]
	ldrsh	w8, [x8]
	subs	w8, w8, #0
	b.le	.LBB0_31
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_25 Depth=1
	ldrsh	w10, [sp, #42]
	ldr	x9, [sp, #32]
	ldrsh	w8, [x9]
	add	w8, w8, w10
	strh	w8, [x9]
	b	.LBB0_32
.LBB0_31:                               //   in Loop: Header=BB0_25 Depth=1
	ldrsh	w10, [sp, #42]
	ldr	x9, [sp, #32]
	ldrsh	w8, [x9]
	subs	w8, w8, w10
	strh	w8, [x9]
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_25 Depth=1
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_25 Depth=1
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_25 Depth=1
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_25 Depth=1
	b	.LBB0_36
.LBB0_36:                               //   in Loop: Header=BB0_25 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_25
.LBB0_37:
	b	.LBB0_72
.LBB0_38:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-44]
	b	.LBB0_39
.LBB0_39:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_55 Depth 2
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	bl	stbi__jpeg_huff_decode
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	b.ge	.LBB0_41
	b	.LBB0_40
.LBB0_40:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_74
.LBB0_41:                               //   in Loop: Header=BB0_39 Depth=1
	ldr	w8, [sp, #20]
	and	w8, w8, #0xf
	str	w8, [sp, #24]
	ldr	w8, [sp, #20]
	asr	w8, w8, #4
	str	w8, [sp, #28]
	ldr	w8, [sp, #24]
	cbnz	w8, .LBB0_48
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_39 Depth=1
	ldr	w8, [sp, #28]
	subs	w8, w8, #15
	b.ge	.LBB0_46
	b	.LBB0_43
.LBB0_43:                               //   in Loop: Header=BB0_39 Depth=1
	ldr	w9, [sp, #28]
	mov	w8, #1
	lsl	w8, w8, w9
	subs	w8, w8, #1
	ldur	x9, [x29, #-16]
	str	w8, [x9, #20]
	ldr	w8, [sp, #28]
	cbz	w8, .LBB0_45
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_39 Depth=1
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #28]
	bl	stbi__jpeg_get_bits
	ldur	x9, [x29, #-16]
	ldrsw	x8, [x9, #20]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9, #20]
	b	.LBB0_45
.LBB0_45:                               //   in Loop: Header=BB0_39 Depth=1
	mov	w8, #64
	str	w8, [sp, #28]
	b	.LBB0_47
.LBB0_46:                               //   in Loop: Header=BB0_39 Depth=1
	b	.LBB0_47
.LBB0_47:                               //   in Loop: Header=BB0_39 Depth=1
	b	.LBB0_54
.LBB0_48:                               //   in Loop: Header=BB0_39 Depth=1
	ldr	w8, [sp, #24]
	subs	w8, w8, #1
	b.eq	.LBB0_50
	b	.LBB0_49
.LBB0_49:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_74
.LBB0_50:                               //   in Loop: Header=BB0_39 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__jpeg_get_bit
	cbz	x0, .LBB0_52
	b	.LBB0_51
.LBB0_51:                               //   in Loop: Header=BB0_39 Depth=1
	ldrsh	w8, [sp, #42]
	str	w8, [sp, #24]
	b	.LBB0_53
.LBB0_52:                               //   in Loop: Header=BB0_39 Depth=1
	ldrsh	w9, [sp, #42]
	mov	w8, wzr
	subs	w8, w8, w9
	str	w8, [sp, #24]
	b	.LBB0_53
.LBB0_53:                               //   in Loop: Header=BB0_39 Depth=1
	b	.LBB0_54
.LBB0_54:                               //   in Loop: Header=BB0_39 Depth=1
	b	.LBB0_55
.LBB0_55:                               //   Parent Loop BB0_39 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-44]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #24]
	subs	w8, w8, w9
	b.gt	.LBB0_69
	b	.LBB0_56
.LBB0_56:                               //   in Loop: Header=BB0_55 Depth=2
	ldur	x8, [x29, #-24]
	adrp	x9, stbi__jpeg_dezigzag
	ldr	x9, [x9, :lo12:stbi__jpeg_dezigzag]
	ldursw	x10, [x29, #-44]
	mov	w11, w10
	add	w11, w11, #1
	stur	w11, [x29, #-44]
	ldr	x9, [x9, x10, lsl #3]
	add	x8, x8, x9, lsl #1
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldrsh	w8, [x8]
	cbz	w8, .LBB0_65
	b	.LBB0_57
.LBB0_57:                               //   in Loop: Header=BB0_55 Depth=2
	ldur	x0, [x29, #-16]
	bl	stbi__jpeg_get_bit
	cbz	x0, .LBB0_64
	b	.LBB0_58
.LBB0_58:                               //   in Loop: Header=BB0_55 Depth=2
	ldr	x8, [sp, #8]
	ldrsh	w8, [x8]
	ldrsh	w9, [sp, #42]
	and	w8, w8, w9
	cbnz	w8, .LBB0_63
	b	.LBB0_59
.LBB0_59:                               //   in Loop: Header=BB0_55 Depth=2
	ldr	x8, [sp, #8]
	ldrsh	w8, [x8]
	subs	w8, w8, #0
	b.le	.LBB0_61
	b	.LBB0_60
.LBB0_60:                               //   in Loop: Header=BB0_55 Depth=2
	ldrsh	w10, [sp, #42]
	ldr	x9, [sp, #8]
	ldrsh	w8, [x9]
	add	w8, w8, w10
	strh	w8, [x9]
	b	.LBB0_62
.LBB0_61:                               //   in Loop: Header=BB0_55 Depth=2
	ldrsh	w10, [sp, #42]
	ldr	x9, [sp, #8]
	ldrsh	w8, [x9]
	subs	w8, w8, w10
	strh	w8, [x9]
	b	.LBB0_62
.LBB0_62:                               //   in Loop: Header=BB0_55 Depth=2
	b	.LBB0_63
.LBB0_63:                               //   in Loop: Header=BB0_55 Depth=2
	b	.LBB0_64
.LBB0_64:                               //   in Loop: Header=BB0_55 Depth=2
	b	.LBB0_68
.LBB0_65:                               //   in Loop: Header=BB0_55 Depth=2
	ldr	w8, [sp, #28]
	cbnz	w8, .LBB0_67
	b	.LBB0_66
.LBB0_66:                               //   in Loop: Header=BB0_39 Depth=1
	ldr	w8, [sp, #24]
	ldr	x9, [sp, #8]
	strh	w8, [x9]
	b	.LBB0_69
.LBB0_67:                               //   in Loop: Header=BB0_55 Depth=2
	ldr	w8, [sp, #28]
	subs	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_68
.LBB0_68:                               //   in Loop: Header=BB0_55 Depth=2
	b	.LBB0_55
.LBB0_69:                               //   in Loop: Header=BB0_39 Depth=1
	b	.LBB0_70
.LBB0_70:                               //   in Loop: Header=BB0_39 Depth=1
	ldur	w8, [x29, #-44]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #24]
	subs	w8, w8, w9
	b.le	.LBB0_39
	b	.LBB0_71
.LBB0_71:
	b	.LBB0_72
.LBB0_72:
	b	.LBB0_73
.LBB0_73:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_74
.LBB0_74:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	stbi__jpeg_decode_block_prog_ac, .Lfunc_end0-stbi__jpeg_decode_block_prog_ac
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"can't merge dc and ac"
	.size	.L.str, 22
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
	.type	stbi__jpeg_dezigzag,@object     // @stbi__jpeg_dezigzag
	.globl	stbi__jpeg_dezigzag
	.p2align	3
stbi__jpeg_dezigzag:
	.xword	0
	.size	stbi__jpeg_dezigzag, 8
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"bad huffman code"
	.size	.L.str.2, 17
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_decode_block_prog_ac
	.addrsig_sym stbi__err
	.addrsig_sym stbi__grow_buffer_unsafe
	.addrsig_sym stbi__jpeg_huff_decode
	.addrsig_sym stbi__jpeg_get_bits
	.addrsig_sym stbi__extend_receive
	.addrsig_sym stbi__jpeg_get_bit
	.addrsig_sym FAST_BITS
	.addrsig_sym stbi__jpeg_dezigzag