	.text
	.globl	spiEnableSSPins                 // -- Begin function spiEnableSSPins
	.p2align	2
	.type	spiEnableSSPins,@function
spiEnableSSPins:                        // @spiEnableSSPins
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
	b	.LBB0_3
.LBB0_2:
	bl	SPI_MUTEX_LOCK
	ldr	w8, [sp, #4]
	adrp	x9, SPI_CS_MASK_ALL
	ldr	w9, [x9, :lo12:SPI_CS_MASK_ALL]
	and	w10, w8, w9
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldr	w8, [x9]
	bic	w8, w8, w10
	str	w8, [x9]
	bl	SPI_MUTEX_UNLOCK
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	spiEnableSSPins, .Lfunc_end0-spiEnableSSPins
                                        // -- End function
	.type	SPI_CS_MASK_ALL,@object         // @SPI_CS_MASK_ALL
	.bss
	.globl	SPI_CS_MASK_ALL
	.p2align	2
SPI_CS_MASK_ALL:
	.word	0                               // 0x0
	.size	SPI_CS_MASK_ALL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK
	.addrsig_sym SPI_CS_MASK_ALL