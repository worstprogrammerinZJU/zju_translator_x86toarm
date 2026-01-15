	.text
	.globl	decNumberRemainder              // -- Begin function decNumberRemainder
	.p2align	2
	.type	decNumberRemainder,@function
decNumberRemainder:                     // @decNumberRemainder
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	add	x5, sp, #8
	str	xzr, [sp, #8]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	adrp	x8, REMAINDER
	ldr	w4, [x8, :lo12:REMAINDER]
	bl	decDivideOp
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	bl	decStatus
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	decNumberRemainder, .Lfunc_end0-decNumberRemainder
                                        // -- End function
	.type	REMAINDER,@object               // @REMAINDER
	.bss
	.globl	REMAINDER
	.p2align	2
REMAINDER:
	.word	0                               // 0x0
	.size	REMAINDER, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decDivideOp
	.addrsig_sym decStatus
	.addrsig_sym REMAINDER