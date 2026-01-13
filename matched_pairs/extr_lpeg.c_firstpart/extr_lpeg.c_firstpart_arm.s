	.text
	.p2align	2                               // -- Begin function firstpart
	.type	firstpart,@function
firstpart:                              // @firstpart
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	x0, [sp, #16]
	bl	istest
	cbz	x0, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	subs	w8, w8, #1
	str	w8, [sp, #8]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #8]
	add	x8, x8, x9, lsl #4
	ldr	x8, [x8, #8]
	adrp	x9, IJmp
	ldr	x9, [x9, :lo12:IJmp]
	subs	x8, x8, x9
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #8]
	add	x8, x8, x9, lsl #4
	ldr	x8, [x8, #8]
	adrp	x9, ICommit
	ldr	x9, [x9, :lo12:ICommit]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #8]
	lsl	x10, x10, #4
	ldr	w9, [x9, x10]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_5:
	b	.LBB0_12
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	adrp	x9, IChoice
	ldr	x9, [x9, :lo12:IChoice]
	subs	x8, x8, x9
	b.ne	.LBB0_11
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	subs	w8, w8, #1
	str	w8, [sp, #4]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	add	x8, x8, x9, lsl #4
	ldr	x8, [x8, #8]
	adrp	x9, ICommit
	ldr	x9, [x9, :lo12:ICommit]
	subs	x8, x8, x9
	b.ne	.LBB0_10
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #4]
	lsl	x10, x10, #4
	ldr	w9, [x9, x10]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_13:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	firstpart, .Lfunc_end0-firstpart
                                        // -- End function
	.type	IJmp,@object                    // @IJmp
	.bss
	.globl	IJmp
	.p2align	3
IJmp:
	.xword	0                               // 0x0
	.size	IJmp, 8
	.type	ICommit,@object                 // @ICommit
	.globl	ICommit
	.p2align	3
ICommit:
	.xword	0                               // 0x0
	.size	ICommit, 8
	.type	IChoice,@object                 // @IChoice
	.globl	IChoice
	.p2align	3
IChoice:
	.xword	0                               // 0x0
	.size	IChoice, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym firstpart
	.addrsig_sym istest
	.addrsig_sym IJmp
	.addrsig_sym ICommit
	.addrsig_sym IChoice