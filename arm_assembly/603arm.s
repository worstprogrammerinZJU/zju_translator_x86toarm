	.text
	.globl	decFloatRemainderNear           // -- Begin function decFloatRemainderNear
	.p2align	2
	.type	decFloatRemainderNear,@function
decFloatRemainderNear:                  // @decFloatRemainderNear
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x3, [sp]
	adrp	x8, REMNEAR
	ldr	w4, [x8, :lo12:REMNEAR]
	bl	decDivide
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decFloatRemainderNear, .Lfunc_end0-decFloatRemainderNear
                                        // -- End function
	.type	REMNEAR,@object                 // @REMNEAR
	.bss
	.globl	REMNEAR
	.p2align	2
REMNEAR:
	.word	0                               // 0x0
	.size	REMNEAR, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decDivide
	.addrsig_sym REMNEAR