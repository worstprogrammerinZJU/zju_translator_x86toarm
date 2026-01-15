	.text
	.globl	spiGetClockDiv                  // -- Begin function spiGetClockDiv
	.p2align	2
	.type	spiGetClockDiv,@function
spiGetClockDiv:                         // @spiGetClockDiv
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp]
	ldr	x8, [x8]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	spiGetClockDiv, .Lfunc_end0-spiGetClockDiv
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig