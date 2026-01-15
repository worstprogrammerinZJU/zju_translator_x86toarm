	.text
	.p2align	2                               // -- Begin function diff_l
	.type	diff_l,@function
diff_l:                                 // @diff_l
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	sub	x2, x29, #12
	bl	getpatt
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	mov	w1, #2
	sub	x2, x29, #16
	bl	getpatt
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-24]
	sub	x1, x29, #40
	bl	tocharset
	adrp	x8, ISCHARSET
	ldr	x8, [x8, :lo12:ISCHARSET]
	subs	x8, x0, x8
	b.ne	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-32]
	add	x1, sp, #48
	bl	tocharset
	adrp	x8, ISCHARSET
	ldr	x8, [x8, :lo12:ISCHARSET]
	subs	x8, x0, x8
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	bl	newcharset
	str	x0, [sp, #40]
	adrp	x9, i
	ldr	x0, [x9, :lo12:i]
	ldur	x8, [x29, #-40]
	ldr	x10, [x9, :lo12:i]
	ldr	w8, [x8, x10, lsl #2]
	ldr	x10, [sp, #48]
	ldr	x11, [x9, :lo12:i]
	ldr	w10, [x10, x11, lsl #2]
	bic	w1, w8, w10
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #8]
	ldr	x9, [x9, :lo12:i]
	str	w1, [x8, x9, lsl #2]
	bl	loopset
	ldr	x0, [sp, #40]
	bl	correctset
	b	.LBB0_7
.LBB0_3:
	ldur	x0, [x29, #-32]
	bl	isheadfail
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-16]
	mov	w9, #1
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	add	w8, w8, #1
	ldur	w9, [x29, #-12]
	add	w1, w8, w9
	bl	newpatt
	str	x0, [sp, #32]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #32]
	mov	w2, #2
	bl	addpatt
	ldr	x8, [sp, #32]
	add	x8, x8, w0, sxtw #3
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	ldursw	x10, [x29, #-16]
	mov	x9, xzr
	subs	x9, x9, x10
	add	x0, x8, x9, lsl #3
	ldur	w8, [x29, #-16]
	add	w1, w8, #1
	bl	check2test
	ldr	x8, [sp, #32]
	mov	x9, x8
	add	x9, x9, #8
	str	x9, [sp, #32]
	mov	w0, w8
	adrp	x8, IFail
	ldr	w1, [x8, :lo12:IFail]
	mov	w2, wzr
	bl	setinst
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #32]
	bl	addpatt
	b	.LBB0_6
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-16]
	mov	w9, #1
	str	w9, [sp, #8]                    // 4-byte Folded Spill
	add	w8, w8, #1
	add	w8, w8, #1
	ldur	w9, [x29, #-12]
	add	w1, w8, w9
	bl	newpatt
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	mov	x9, x8
	add	x9, x9, #8
	str	x9, [sp, #24]
	mov	w0, w8
	adrp	x8, IChoice
	ldr	w1, [x8, :lo12:IChoice]
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	add	w2, w8, #1
	bl	setinst
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	mov	w2, #2
	bl	addpatt
	ldr	x8, [sp, #24]
	add	x8, x8, w0, sxtw #3
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	mov	x9, x8
	add	x9, x9, #8
	str	x9, [sp, #24]
	mov	w0, w8
	adrp	x8, IFailTwice
	ldr	w1, [x8, :lo12:IFailTwice]
	mov	w2, wzr
	bl	setinst
	ldr	w2, [sp, #8]                    // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	bl	addpatt
	ldr	x0, [sp, #16]
	bl	optimizechoice
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	mov	w0, #1
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	diff_l, .Lfunc_end0-diff_l
                                        // -- End function
	.type	ISCHARSET,@object               // @ISCHARSET
	.bss
	.globl	ISCHARSET
	.p2align	3
ISCHARSET:
	.xword	0                               // 0x0
	.size	ISCHARSET, 8
	.type	i,@object                       // @i
	.globl	i
	.p2align	3
i:
	.xword	0                               // 0x0
	.size	i, 8
	.type	IFail,@object                   // @IFail
	.globl	IFail
	.p2align	2
IFail:
	.word	0                               // 0x0
	.size	IFail, 4
	.type	IChoice,@object                 // @IChoice
	.globl	IChoice
	.p2align	2
IChoice:
	.word	0                               // 0x0
	.size	IChoice, 4
	.type	IFailTwice,@object              // @IFailTwice
	.globl	IFailTwice
	.p2align	2
IFailTwice:
	.word	0                               // 0x0
	.size	IFailTwice, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym diff_l
	.addrsig_sym getpatt
	.addrsig_sym tocharset
	.addrsig_sym newcharset
	.addrsig_sym loopset
	.addrsig_sym correctset
	.addrsig_sym isheadfail
	.addrsig_sym newpatt
	.addrsig_sym addpatt
	.addrsig_sym check2test
	.addrsig_sym setinst
	.addrsig_sym optimizechoice
	.addrsig_sym ISCHARSET
	.addrsig_sym i
	.addrsig_sym IFail
	.addrsig_sym IChoice
	.addrsig_sym IFailTwice