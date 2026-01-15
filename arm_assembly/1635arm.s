	.text
	.p2align	2                               // -- Begin function tocharset
	.type	tocharset,@function
tocharset:                              // @tocharset
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	ischeck
	cbz	x0, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #4]
	bl	fillcharset
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	sizei
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, w0, sxtw #3]
	adrp	x9, IEnd
	ldr	x9, [x9, :lo12:IEnd]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	bl	op_step
	subs	w8, w0, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, ISCHARSET
	ldr	w8, [x8, :lo12:ISCHARSET]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	b	.LBB0_5
.LBB0_4:
	adrp	x8, VALIDSTARTS
	ldr	w8, [x8, :lo12:VALIDSTARTS]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_7
.LBB0_6:
	adrp	x8, NOINFO
	ldr	w8, [x8, :lo12:NOINFO]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	tocharset, .Lfunc_end0-tocharset
                                        // -- End function
	.type	IEnd,@object                    // @IEnd
	.bss
	.globl	IEnd
	.p2align	3
IEnd:
	.xword	0                               // 0x0
	.size	IEnd, 8
	.type	ISCHARSET,@object               // @ISCHARSET
	.globl	ISCHARSET
	.p2align	2
ISCHARSET:
	.word	0                               // 0x0
	.size	ISCHARSET, 4
	.type	VALIDSTARTS,@object             // @VALIDSTARTS
	.globl	VALIDSTARTS
	.p2align	2
VALIDSTARTS:
	.word	0                               // 0x0
	.size	VALIDSTARTS, 4
	.type	NOINFO,@object                  // @NOINFO
	.globl	NOINFO
	.p2align	2
NOINFO:
	.word	0                               // 0x0
	.size	NOINFO, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tocharset
	.addrsig_sym ischeck
	.addrsig_sym fillcharset
	.addrsig_sym sizei
	.addrsig_sym op_step
	.addrsig_sym IEnd
	.addrsig_sym ISCHARSET
	.addrsig_sym VALIDSTARTS
	.addrsig_sym NOINFO