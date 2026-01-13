	.text
	.p2align	2                               // -- Begin function align_round_up
	.type	align_round_up,@function
align_round_up:                         // @align_round_up
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	adrp	x9, ALIGNMENT
	ldr	w10, [x9, :lo12:ALIGNMENT]
	subs	w10, w10, #1
	add	x8, x8, w10, sxtw
	ldrsw	x10, [x9, :lo12:ALIGNMENT]
	udiv	x8, x8, x10
	ldrsw	x9, [x9, :lo12:ALIGNMENT]
	mul	x0, x8, x9
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	align_round_up, .Lfunc_end0-align_round_up
                                        // -- End function
	.type	ALIGNMENT,@object               // @ALIGNMENT
	.bss
	.globl	ALIGNMENT
	.p2align	2
ALIGNMENT:
	.word	0                               // 0x0
	.size	ALIGNMENT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym align_round_up
	.addrsig_sym ALIGNMENT