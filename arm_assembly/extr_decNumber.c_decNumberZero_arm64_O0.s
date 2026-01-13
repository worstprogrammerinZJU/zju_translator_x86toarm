	.text
	.globl	decNumberZero                   // -- Begin function decNumberZero
	.p2align	2
	.type	decNumberZero,@function
decNumberZero:                          // @decNumberZero
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #24]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #16]
	ldr	x9, [sp, #8]
	mov	w8, #1
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	str	xzr, [x8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	decNumberZero, .Lfunc_end0-decNumberZero
                                        // -- End function
	.type	DECUNCONT,@object               // @DECUNCONT
	.bss
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