	.text
	.p2align	2                               // -- Begin function stbi__process_scan_header
	.type	stbi__process_scan_header,@function
stbi__process_scan_header:              // @stbi__process_scan_header
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #40]
	bl	stbi__get16be
	str	w0, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #40]
	bl	stbi__get8
	mov	w8, w0
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w8, w8, #1
	b.lt	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w8, w8, #4
	b.gt	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #40]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_37
.LBB0_4:
	ldr	w8, [sp, #24]
	ldur	x9, [x29, #-16]
	ldr	w10, [x9]
	mov	w9, #2
	mul	w9, w9, w10
	add	w9, w9, #6
	subs	w8, w8, w9
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_37
.LBB0_6:
	stur	wzr, [x29, #-20]
	b	.LBB0_7
.LBB0_7:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_9 Depth 2
	ldur	w8, [x29, #-20]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_22
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #40]
	bl	stbi__get8
	mov	w8, w0
	str	w8, [sp, #20]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #40]
	bl	stbi__get8
	mov	w8, w0
	str	w8, [sp, #12]
	str	wzr, [sp, #16]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_7 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #40]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=2
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #48]
	ldrsw	x9, [sp, #16]
	mov	x10, #12
	mul	x9, x9, x10
	ldr	w8, [x8, x9]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_14
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=2
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_9
.LBB0_14:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #40]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	stur	wzr, [x29, #-4]
	b	.LBB0_37
.LBB0_16:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #12]
	asr	w8, w8, #4
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #48]
	ldrsw	x11, [sp, #16]
	mov	x10, #12
	mul	x11, x11, x10
	add	x9, x9, x11
	str	w8, [x9, #4]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #48]
	ldrsw	x9, [sp, #16]
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #4]
	subs	w8, w8, #3
	b.le	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_37
.LBB0_18:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #12]
	and	w8, w8, #0xf
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #48]
	ldrsw	x11, [sp, #16]
	mov	x10, #12
	mul	x11, x11, x10
	add	x9, x9, x11
	str	w8, [x9, #8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #48]
	ldrsw	x9, [sp, #16]
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #8]
	subs	w8, w8, #3
	b.le	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_37
.LBB0_20:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-20]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_7
.LBB0_22:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #40]
	bl	stbi__get8
	mov	w8, w0
	ldur	x9, [x29, #-16]
	str	w8, [x9, #16]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #40]
	bl	stbi__get8
	mov	w8, w0
	ldur	x9, [x29, #-16]
	str	w8, [x9, #20]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #40]
	bl	stbi__get8
	mov	w8, w0
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	asr	w8, w8, #4
	ldur	x9, [x29, #-16]
	str	w8, [x9, #24]
	ldr	w8, [sp, #8]
	and	w8, w8, #0xf
	ldur	x9, [x29, #-16]
	str	w8, [x9, #28]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	cbz	x8, .LBB0_30
	b	.LBB0_23
.LBB0_23:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #16]
	subs	w8, w8, #63
	b.gt	.LBB0_28
	b	.LBB0_24
.LBB0_24:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	subs	w8, w8, #63
	b.gt	.LBB0_28
	b	.LBB0_25
.LBB0_25:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #16]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #20]
	subs	w8, w8, w9
	b.gt	.LBB0_28
	b	.LBB0_26
.LBB0_26:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #24]
	subs	w8, w8, #13
	b.gt	.LBB0_28
	b	.LBB0_27
.LBB0_27:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #28]
	subs	w8, w8, #13
	b.le	.LBB0_29
	b	.LBB0_28
.LBB0_28:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_37
.LBB0_29:
	b	.LBB0_36
.LBB0_30:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #16]
	cbz	w8, .LBB0_32
	b	.LBB0_31
.LBB0_31:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_37
.LBB0_32:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #24]
	cbnz	w8, .LBB0_34
	b	.LBB0_33
.LBB0_33:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #28]
	cbz	w8, .LBB0_35
	b	.LBB0_34
.LBB0_34:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_37
.LBB0_35:
	ldur	x9, [x29, #-16]
	mov	w8, #63
	str	w8, [x9, #20]
	b	.LBB0_36
.LBB0_36:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_37
.LBB0_37:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__process_scan_header, .Lfunc_end0-stbi__process_scan_header
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad SOS component count"
	.size	.L.str, 24
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt JPEG"
	.size	.L.str.1, 13
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"bad SOS len"
	.size	.L.str.2, 12
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"bad DC huff"
	.size	.L.str.3, 12
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"bad AC huff"
	.size	.L.str.4, 12
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"bad SOS"
	.size	.L.str.5, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__process_scan_header
	.addrsig_sym stbi__get16be
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__err