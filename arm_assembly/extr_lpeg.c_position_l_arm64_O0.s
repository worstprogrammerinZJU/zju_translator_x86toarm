	.text
	.p2align	2                               // -- Begin function position_l
	.type	position_l,@function
position_l:                             // @position_l
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	newpatt
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	adrp	x8, IEmptyCapture
	ldr	w1, [x8, :lo12:IEmptyCapture]
	adrp	x8, Cposition
	ldr	w3, [x8, :lo12:Cposition]
	mov	w4, wzr
	mov	w2, w4
	bl	setinstcap
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	position_l, .Lfunc_end0-position_l
                                        // -- End function
	.type	IEmptyCapture,@object           // @IEmptyCapture
	.bss
	.globl	IEmptyCapture
	.p2align	2
IEmptyCapture:
	.word	0                               // 0x0
	.size	IEmptyCapture, 4
	.type	Cposition,@object               // @Cposition
	.globl	Cposition
	.p2align	2
Cposition:
	.word	0                               // 0x0
	.size	Cposition, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym position_l
	.addrsig_sym newpatt
	.addrsig_sym setinstcap
	.addrsig_sym IEmptyCapture
	.addrsig_sym Cposition