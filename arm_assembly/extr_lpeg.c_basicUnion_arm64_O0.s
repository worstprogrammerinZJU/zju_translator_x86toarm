	.text
	.p2align	2                               // -- Begin function basicUnion
	.type	basicUnion,@function
basicUnion:                             // @basicUnion
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	stur	x4, [x29, #-32]
	stur	x5, [x29, #-40]
	ldur	x0, [x29, #-16]
	add	x1, sp, #32
	bl	tocharset
	ldr	x8, [sp, #32]
	adrp	x9, ISCHARSET
	ldr	x9, [x9, :lo12:ISCHARSET]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-40]
	ldr	x8, [x8]
	adrp	x9, ISCHARSET
	ldr	x9, [x9, :lo12:ISCHARSET]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-32]
	adrp	x8, CHARSETINSTSIZE
	ldr	w3, [x8, :lo12:CHARSETINSTSIZE]
	add	x1, sp, #48
	bl	auxnew
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	adrp	x8, ISet
	ldr	w1, [x8, :lo12:ISet]
	mov	w2, wzr
	bl	setinst
	adrp	x9, i
	ldr	x0, [x9, :lo12:i]
	ldr	x8, [sp, #40]
	ldr	x10, [x9, :lo12:i]
	ldr	w8, [x8, x10, lsl #2]
	ldur	x10, [x29, #-40]
	ldr	x10, [x10, #8]
	ldr	x11, [x9, :lo12:i]
	ldr	w10, [x10, x11, lsl #2]
	orr	w1, w8, w10
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldr	x9, [x9, :lo12:i]
	str	w1, [x8, x9, lsl #2]
	bl	loopset
	ldr	x0, [sp, #24]
	bl	correctset
	b	.LBB0_8
.LBB0_3:
	ldur	x1, [x29, #-40]
	add	x0, sp, #32
	bl	exclusive
	cbnz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-16]
	bl	isheadfail
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-32]
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	ldur	w9, [x29, #-24]
	add	w3, w8, w9
	add	x1, sp, #48
	bl	auxnew
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	ldur	w2, [x29, #-20]
	bl	copypatt
	ldr	x0, [sp, #16]
	ldur	w8, [x29, #-20]
	add	w1, w8, #1
	bl	check2test
	ldursw	x9, [x29, #-20]
	ldr	x8, [sp, #16]
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	mov	x8, x0
	add	x8, x8, #8
	str	x8, [sp, #16]
	adrp	x8, IJmp
	ldr	w1, [x8, :lo12:IJmp]
	ldur	w8, [x29, #-24]
	add	w2, w8, #1
	bl	setinst
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	mov	w2, #2
	bl	addpatt
	b	.LBB0_7
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-32]
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	add	w8, w8, #1
	ldur	w9, [x29, #-24]
	add	w3, w8, w9
	add	x1, sp, #48
	bl	auxnew
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	x8, x0
	add	x8, x8, #8
	str	x8, [sp, #8]
	adrp	x8, IChoice
	ldr	w1, [x8, :lo12:IChoice]
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	add	w2, w8, #1
	bl	setinst
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-16]
	ldur	w2, [x29, #-20]
	bl	copypatt
	ldursw	x9, [x29, #-20]
	ldr	x8, [sp, #8]
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	mov	x8, x0
	add	x8, x8, #8
	str	x8, [sp, #8]
	adrp	x8, ICommit
	ldr	w1, [x8, :lo12:ICommit]
	ldur	w8, [x29, #-24]
	add	w2, w8, #1
	bl	setinst
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	mov	w2, #2
	bl	addpatt
	ldr	x8, [sp, #8]
	ldur	w9, [x29, #-20]
	add	w9, w9, #1
	add	w10, w9, #1
	mov	x9, xzr
	subs	x9, x9, w10, sxtw
	add	x0, x8, x9, lsl #3
	bl	optimizechoice
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	ldr	x0, [sp, #48]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	basicUnion, .Lfunc_end0-basicUnion
                                        // -- End function
	.type	ISCHARSET,@object               // @ISCHARSET
	.bss
	.globl	ISCHARSET
	.p2align	3
ISCHARSET:
	.xword	0                               // 0x0
	.size	ISCHARSET, 8
	.type	CHARSETINSTSIZE,@object         // @CHARSETINSTSIZE
	.globl	CHARSETINSTSIZE
	.p2align	2
CHARSETINSTSIZE:
	.word	0                               // 0x0
	.size	CHARSETINSTSIZE, 4
	.type	ISet,@object                    // @ISet
	.globl	ISet
	.p2align	2
ISet:
	.word	0                               // 0x0
	.size	ISet, 4
	.type	i,@object                       // @i
	.globl	i
	.p2align	3
i:
	.xword	0                               // 0x0
	.size	i, 8
	.type	IJmp,@object                    // @IJmp
	.globl	IJmp
	.p2align	2
IJmp:
	.word	0                               // 0x0
	.size	IJmp, 4
	.type	IChoice,@object                 // @IChoice
	.globl	IChoice
	.p2align	2
IChoice:
	.word	0                               // 0x0
	.size	IChoice, 4
	.type	ICommit,@object                 // @ICommit
	.globl	ICommit
	.p2align	2
ICommit:
	.word	0                               // 0x0
	.size	ICommit, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym basicUnion
	.addrsig_sym tocharset
	.addrsig_sym auxnew
	.addrsig_sym setinst
	.addrsig_sym loopset
	.addrsig_sym correctset
	.addrsig_sym exclusive
	.addrsig_sym isheadfail
	.addrsig_sym copypatt
	.addrsig_sym check2test
	.addrsig_sym addpatt
	.addrsig_sym optimizechoice
	.addrsig_sym ISCHARSET
	.addrsig_sym CHARSETINSTSIZE
	.addrsig_sym ISet
	.addrsig_sym i
	.addrsig_sym IJmp
	.addrsig_sym IChoice
	.addrsig_sym ICommit