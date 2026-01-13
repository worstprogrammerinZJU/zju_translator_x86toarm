	.text
	.globl	spiSSSet                        // -- Begin function spiSSSet
	.p2align	2
	.type	spiSSSet,@function
spiSSSet:                               // @spiSSSet
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	bl	SPI_MUTEX_LOCK
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9]
	bl	SPI_MUTEX_UNLOCK
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	spiSSSet, .Lfunc_end0-spiSSSet
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK