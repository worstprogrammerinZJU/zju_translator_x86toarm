	.text
	.p2align	2                               // -- Begin function any
	.type	any,@function
any:                                    // @any
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	x3, [x29, #-24]
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	mov	w8, wzr
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	stur	w8, [x29, #-28]
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #1
	adrp	x9, UCHAR_MAX
	ldr	w9, [x9, :lo12:UCHAR_MAX]
	sdiv	w8, w8, w9
	ldur	w9, [x29, #-16]
	add	w8, w8, w9
	add	w1, w8, #1
	bl	newpatt
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-28]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #16]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	adrp	x9, UCHAR_MAX
	ldr	w9, [x9, :lo12:UCHAR_MAX]
	subs	w8, w8, w9
	b.le	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #16]
	mov	x9, x8
	add	x9, x9, #4
	str	x9, [sp, #16]
	mov	w0, w8
	adrp	x8, IAny
	ldr	w1, [x8, :lo12:IAny]
	adrp	x8, UCHAR_MAX
	ldr	w3, [x8, :lo12:UCHAR_MAX]
	mov	w2, wzr
	bl	setinstaux
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	adrp	x8, UCHAR_MAX
	ldr	w9, [x8, :lo12:UCHAR_MAX]
	ldur	w8, [x29, #-12]
	subs	w8, w8, w9
	stur	w8, [x29, #-12]
	b	.LBB0_4
.LBB0_7:
	ldr	x8, [sp, #16]
	mov	x9, x8
	add	x9, x9, #4
	str	x9, [sp, #16]
	mov	w0, w8
	adrp	x8, IAny
	ldr	w1, [x8, :lo12:IAny]
	ldur	w3, [x29, #-12]
	mov	w2, wzr
	bl	setinstaux
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x8, x8, x9
	ldur	x9, [x29, #-24]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9]
	b	.LBB0_9
.LBB0_9:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	any, .Lfunc_end0-any
                                        // -- End function
	.type	UCHAR_MAX,@object               // @UCHAR_MAX
	.bss
	.globl	UCHAR_MAX
	.p2align	2
UCHAR_MAX:
	.word	0                               // 0x0
	.size	UCHAR_MAX, 4
	.type	IAny,@object                    // @IAny
	.globl	IAny
	.p2align	2
IAny:
	.word	0                               // 0x0
	.size	IAny, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym any
	.addrsig_sym newpatt
	.addrsig_sym setinstaux
	.addrsig_sym UCHAR_MAX
	.addrsig_sym IAny