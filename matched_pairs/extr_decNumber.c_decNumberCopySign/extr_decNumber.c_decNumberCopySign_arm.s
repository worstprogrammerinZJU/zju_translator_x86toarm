	.text
	.globl	decNumberCopySign               // -- Begin function decNumberCopySign
	.p2align	2
	.type	decNumberCopySign,@function
decNumberCopySign:                      // @decNumberCopySign
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	adrp	x9, DECNEG
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	ldr	w9, [x9, :lo12:DECNEG]
	and	w8, w8, w9
	str	w8, [sp, #20]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	decNumberCopy
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w10, [x8, :lo12:DECNEG]
	ldur	x9, [x29, #-8]
	ldr	w8, [x9]
	bic	w8, w8, w10
	str	w8, [x9]
	ldr	w10, [sp, #20]
	ldur	x9, [x29, #-8]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	decNumberCopySign, .Lfunc_end0-decNumberCopySign
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