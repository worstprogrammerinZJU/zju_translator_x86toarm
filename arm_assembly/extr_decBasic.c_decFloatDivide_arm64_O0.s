	.text
	.globl	decFloatDivide                  // -- Begin function decFloatDivide
	.p2align	2
	.type	decFloatDivide,@function
decFloatDivide:                         // @decFloatDivide
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
	adrp	x8, DIVIDE
	ldr	w4, [x8, :lo12:DIVIDE]
	bl	decDivide
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decFloatDivide, .Lfunc_end0-decFloatDivide
                                        // -- End function
	.type	DIVIDE,@object                  // @DIVIDE
	.bss
	.globl	DIVIDE
	.p2align	2
DIVIDE:
	.word	0                               // 0x0
	.size	DIVIDE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decDivide
	.addrsig_sym DIVIDE