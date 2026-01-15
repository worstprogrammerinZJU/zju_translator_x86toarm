	.text
	.globl	decFloatShow                    // -- Begin function decFloatShow
	.p2align	2
	.type	decFloatShow,@function
decFloatShow:                           // @decFloatShow
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	adrp	x8, DECBYTES
	ldr	w9, [x8, :lo12:DECBYTES]
	ldr	w8, [x8, :lo12:DECBYTES]
	mov	w10, #4
	sdiv	w8, w8, w10
	add	w8, w8, w9, lsl #1
	add	w8, w8, #1
                                        // kill: def $x8 killed $w8
	mov	x9, sp
	stur	x9, [x29, #-24]
	lsr	x9, x8, #0
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x9, x9, x10
	mov	sp, x9
	stur	x9, [x29, #-64]                 // 8-byte Folded Spill
	stur	x8, [x29, #-32]
	adrp	x8, DECSTRING
	ldr	w8, [x8, :lo12:DECSTRING]
                                        // kill: def $x8 killed $w8
	lsr	x9, x8, #0
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x0, x9, x10
	stur	x0, [x29, #-56]                 // 8-byte Folded Spill
	mov	sp, x0
	stur	x8, [x29, #-40]
	stur	wzr, [x29, #-48]
	stur	wzr, [x29, #-44]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-44]
	adrp	x9, DECBYTES
	ldr	w9, [x9, :lo12:DECBYTES]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-64]                 // 8-byte Folded Reload
	ldursw	x9, [x29, #-48]
	add	x0, x8, x9
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-44]
	ldr	w2, [x8, x9, lsl #2]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	sprintf
	ldur	w8, [x29, #-48]
	add	w8, w8, #2
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	mov	w10, #4
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-64]                 // 8-byte Folded Reload
	ldursw	x9, [x29, #-48]
	add	x0, x8, x9
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcpy
	ldur	w8, [x29, #-48]
	add	w8, w8, #1
	stur	w8, [x29, #-48]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_1
.LBB0_6:
	ldur	x1, [x29, #-56]                 // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	decFloatToString
	ldur	x2, [x29, #-64]                 // 8-byte Folded Reload
	ldur	x3, [x29, #-56]                 // 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	ldur	x8, [x29, #-24]
	mov	sp, x8
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	decFloatShow, .Lfunc_end0-decFloatShow
                                        // -- End function
	.type	DECBYTES,@object                // @DECBYTES
	.bss
	.globl	DECBYTES
	.p2align	2
DECBYTES:
	.word	0                               // 0x0
	.size	DECBYTES, 4
	.type	DECSTRING,@object               // @DECSTRING
	.globl	DECSTRING
	.p2align	2
DECSTRING:
	.word	0                               // 0x0
	.size	DECSTRING, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%02x"
	.size	.L.str, 5
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	" "
	.size	.L.str.1, 2
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	">%s> %s [big-endian]  %s\n"
	.size	.L.str.2, 26
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sprintf
	.addrsig_sym strcpy
	.addrsig_sym decFloatToString
	.addrsig_sym printf
	.addrsig_sym DECBYTES
	.addrsig_sym DECSTRING