	.text
	.p2align	2                               // -- Begin function optionals
	.type	optionals,@function
optionals:                              // @optionals
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-12]
	add	w9, w9, #1
	mul	w8, w8, w9
	add	w1, w8, #1
	bl	newpatt
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	mov	x8, x0
	add	x8, x8, #4
	str	x8, [sp, #8]
	adrp	x8, IChoice
	ldr	w1, [x8, :lo12:IChoice]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-12]
	add	w9, w9, #1
	mul	w8, w8, w9
	add	w2, w8, #1
	bl	setinst
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	mov	w2, #1
	str	w2, [sp, #4]                    // 4-byte Folded Spill
	bl	addpatt
	ldr	w2, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #8]
	add	x8, x8, w0, sxtw #2
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	mov	x8, x0
	add	x8, x8, #4
	str	x8, [sp, #8]
	adrp	x8, IPartialCommit
	ldr	w1, [x8, :lo12:IPartialCommit]
	bl	setinst
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_4:
	ldr	x8, [sp, #8]
	subs	x0, x8, #4
	adrp	x8, ICommit
	ldr	w1, [x8, :lo12:ICommit]
	mov	w2, #1
	bl	setinst
	ldr	x0, [sp, #16]
	bl	optimizechoice
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	optionals, .Lfunc_end0-optionals
                                        // -- End function
	.type	IChoice,@object                 // @IChoice
	.bss
	.globl	IChoice
	.p2align	2
IChoice:
	.word	0                               // 0x0
	.size	IChoice, 4
	.type	IPartialCommit,@object          // @IPartialCommit
	.globl	IPartialCommit
	.p2align	2
IPartialCommit:
	.word	0                               // 0x0
	.size	IPartialCommit, 4
	.type	ICommit,@object                 // @ICommit
	.globl	ICommit
	.p2align	2
ICommit:
	.word	0                               // 0x0
	.size	ICommit, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optionals
	.addrsig_sym newpatt
	.addrsig_sym setinst
	.addrsig_sym addpatt
	.addrsig_sym optimizechoice
	.addrsig_sym IChoice
	.addrsig_sym IPartialCommit
	.addrsig_sym ICommit