	.text
	.globl	decNumberTrim                   // -- Begin function decNumberTrim
	.p2align	2
	.type	decNumberTrim,@function
decNumberTrim:                          // @decNumberTrim
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	adrp	x8, DEC_INIT_BASE
	ldr	w1, [x8, :lo12:DEC_INIT_BASE]
	add	x0, sp, #16
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	decContextDefault
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	mov	w2, wzr
	mov	w3, #1
	sub	x4, x29, #12
	bl	decTrim
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decNumberTrim, .Lfunc_end0-decNumberTrim
                                        // -- End function
	.type	DEC_INIT_BASE,@object           // @DEC_INIT_BASE
	.bss
	.globl	DEC_INIT_BASE
	.p2align	2
DEC_INIT_BASE:
	.word	0                               // 0x0
	.size	DEC_INIT_BASE, 4
	.type	DECUNCONT,@object               // @DECUNCONT
	.globl	DECUNCONT
	.p2align	2
DECUNCONT:
	.word	0                               // 0x0
	.size	DECUNCONT, 4
	.type	DECUNRESU,@object               // @DECUNRESU
	.globl	DECUNRESU
	.p2align	2
DECUNRESU:
	.word	0                               // 0x0
	.size	DECUNRESU, 4
	.type	DECUNUSED,@object               // @DECUNUSED
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.word	0                               // 0x0
	.size	DECUNUSED, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decContextDefault
	.addrsig_sym decTrim
	.addrsig_sym DEC_INIT_BASE