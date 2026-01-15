	.text
	.globl	spiWriteByte                    // -- Begin function spiWriteByte
	.p2align	2
	.type	spiWriteByte,@function
spiWriteByte:                           // @spiWriteByte
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_6
.LBB0_2:
	bl	SPI_MUTEX_LOCK
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	mov	w8, #7
	str	w8, [x9, #24]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	xzr, [x8, #16]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w8, [x8]
	cbz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_3
.LBB0_5:
	bl	SPI_MUTEX_UNLOCK
	b	.LBB0_6
.LBB0_6:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	spiWriteByte, .Lfunc_end0-spiWriteByte
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK