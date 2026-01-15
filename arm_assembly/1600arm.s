	.text
	.p2align	2                               // -- Begin function pattand_l
	.type	pattand_l,@function
pattand_l:                              // @pattand_l
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	getpattl
	stur	w0, [x29, #-12]
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	mov	w9, #2
	str	w9, [sp]                        // 4-byte Folded Spill
	add	w1, w8, #2
	bl	newpatt
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	mov	x9, x8
	add	x9, x9, #4
	str	x9, [sp, #8]
	mov	w0, w8
	adrp	x8, IChoice
	ldr	w1, [x8, :lo12:IChoice]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	add	w2, w8, #1
	bl	setinst
	ldr	w2, [sp, #4]                    // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	addpatt
	ldr	w2, [sp]                        // 4-byte Folded Reload
	ldr	x8, [sp, #8]
	add	x8, x8, w0, sxtw #2
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	mov	x9, x8
	add	x9, x9, #4
	str	x9, [sp, #8]
	mov	w0, w8
	adrp	x8, IBackCommit
	ldr	w1, [x8, :lo12:IBackCommit]
	bl	setinst
	ldr	w3, [sp, #4]                    // 4-byte Folded Reload
	ldr	x0, [sp, #8]
	adrp	x8, IFail
	ldr	w1, [x8, :lo12:IFail]
	mov	w2, wzr
	bl	setinstaux
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	pattand_l, .Lfunc_end0-pattand_l
                                        // -- End function
	.type	IChoice,@object                 // @IChoice
	.bss
	.globl	IChoice
	.p2align	2
IChoice:
	.word	0                               // 0x0
	.size	IChoice, 4
	.type	IBackCommit,@object             // @IBackCommit
	.globl	IBackCommit
	.p2align	2
IBackCommit:
	.word	0                               // 0x0
	.size	IBackCommit, 4
	.type	IFail,@object                   // @IFail
	.globl	IFail
	.p2align	2
IFail:
	.word	0                               // 0x0
	.size	IFail, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pattand_l
	.addrsig_sym getpattl
	.addrsig_sym newpatt
	.addrsig_sym setinst
	.addrsig_sym addpatt
	.addrsig_sym setinstaux
	.addrsig_sym IChoice
	.addrsig_sym IBackCommit
	.addrsig_sym IFail