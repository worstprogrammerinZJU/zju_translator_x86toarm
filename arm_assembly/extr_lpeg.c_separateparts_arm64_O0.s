	.text
	.p2align	2                               // -- Begin function separateparts
	.type	separateparts,@function
separateparts:                          // @separateparts
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	stur	w3, [x29, #-32]
	stur	x4, [x29, #-40]
	str	x5, [sp, #48]
	ldur	x0, [x29, #-24]
	ldur	w1, [x29, #-28]
	bl	firstpart
	str	w0, [sp, #44]
	ldr	w8, [sp, #44]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	w2, [x29, #-28]
	ldur	w3, [x29, #-32]
	ldur	x4, [x29, #-40]
	ldr	x5, [sp, #48]
	bl	basicUnion
	stur	x0, [x29, #-8]
	b	.LBB0_6
.LBB0_2:
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	add	x8, x8, x9, lsl #4
	ldur	x8, [x8, #-16]
	adrp	x9, ICommit
	ldr	x9, [x9, :lo12:ICommit]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-24]
	ldr	w1, [sp, #44]
	ldr	x2, [sp, #48]
	bl	interfere
	cbnz	w0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-40]
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #44]
	add	w8, w8, w9
	str	w8, [sp, #24]
	ldr	w8, [sp, #24]
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	add	x1, x8, x9, lsl #4
	ldur	w8, [x29, #-28]
	ldr	w9, [sp, #44]
	subs	w2, w8, w9
	ldur	w3, [x29, #-32]
	ldur	x4, [x29, #-40]
	ldr	x5, [sp, #48]
	bl	separateparts
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #28]
	add	x0, x8, x9, lsl #4
	ldur	x1, [x29, #-24]
	ldr	w2, [sp, #44]
	bl	copypatt
	ldur	x8, [x29, #-40]
	ldr	w8, [x8]
	ldr	w9, [sp, #24]
	subs	w9, w9, #1
	subs	w8, w8, w9
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #24]
	add	x9, x9, x10, lsl #4
	stur	w8, [x9, #-8]
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	.LBB0_6
.LBB0_5:
	ldur	x8, [x29, #-40]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #44]
	add	w8, w8, w9
	mov	w9, #1
	str	w9, [sp]                        // 4-byte Folded Spill
	add	w8, w8, #1
	str	w8, [sp, #8]
	ldur	x0, [x29, #-24]
	bl	sizei
	str	w0, [sp, #4]
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	add	x1, x8, x9, lsl #4
	ldur	w8, [x29, #-28]
	ldr	w9, [sp, #44]
	subs	w2, w8, w9
	ldur	w3, [x29, #-32]
	ldur	x4, [x29, #-40]
	ldr	x5, [sp, #48]
	bl	separateparts
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	add	x0, x8, x9, lsl #4
	ldur	x1, [x29, #-24]
	ldr	w2, [sp, #4]
	bl	copypatt
	ldr	w3, [sp]                        // 4-byte Folded Reload
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	add	x9, x8, x9, lsl #4
	ldr	w8, [x9, #8]
	add	w8, w8, #1
	str	w8, [x9, #8]
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #12]
	add	w8, w8, w9
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	add	x0, x8, x9, lsl #4
	adrp	x8, IChoice
	ldr	w1, [x8, :lo12:IChoice]
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	add	w2, w8, #1
	bl	setinstaux
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	add	x0, x8, x9, lsl #4
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #4]
	add	x1, x8, x9, lsl #4
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	subs	w2, w8, #1
	bl	copypatt
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	subs	w9, w8, #1
	ldr	w8, [sp, #12]
	add	w8, w8, w9
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	add	x0, x8, x9, lsl #4
	adrp	x8, ICommit
	ldr	x1, [x8, :lo12:ICommit]
	ldur	x8, [x29, #-40]
	ldr	w8, [x8]
	ldr	w9, [sp, #8]
	subs	w9, w9, #1
	subs	w2, w8, w9
	bl	setinst
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	separateparts, .Lfunc_end0-separateparts
                                        // -- End function
	.type	ICommit,@object                 // @ICommit
	.bss
	.globl	ICommit
	.p2align	3
ICommit:
	.xword	0                               // 0x0
	.size	ICommit, 8
	.type	IChoice,@object                 // @IChoice
	.globl	IChoice
	.p2align	2
IChoice:
	.word	0                               // 0x0
	.size	IChoice, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym separateparts
	.addrsig_sym firstpart
	.addrsig_sym basicUnion
	.addrsig_sym interfere
	.addrsig_sym copypatt
	.addrsig_sym sizei
	.addrsig_sym setinstaux
	.addrsig_sym setinst
	.addrsig_sym ICommit
	.addrsig_sym IChoice