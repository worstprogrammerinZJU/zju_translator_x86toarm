	.text
	.globl	decNumberCopyAbs                // -- Begin function decNumberCopyAbs
	.p2align	2
	.type	decNumberCopyAbs,@function
decNumberCopyAbs:                       // @decNumberCopyAbs
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	decNumberCopy
	adrp	x8, DECNEG
	ldr	w10, [x8, :lo12:DECNEG]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	bic	w8, w8, w10
	str	w8, [x9]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decNumberCopyAbs, .Lfunc_end0-decNumberCopyAbs
                                        // -- End function
	.type	DECNEG,@object                  // @DECNEG
	.bss
	.globl	DECNEG
	.p2align	2
DECNEG:
	.word	0                               // 0x0
	.size	DECNEG, 4
	.type	DECUNCONT,@object               // @DECUNCONT
	.globl	DECUNCONT
	.p2align	2
DECUNCONT:
	.word	0                               // 0x0
	.size	DECUNCONT, 4
	.type	DECUNUSED,@object               // @DECUNUSED
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.word	0                               // 0x0
	.size	DECUNUSED, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberCopy
	.addrsig_sym DECNEG