	.text
	.globl	spiSetBitOrder                  // -- Begin function spiSetBitOrder
	.p2align	2
	.type	spiSetBitOrder,@function
spiSetBitOrder:                         // @spiSetBitOrder
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_8
.LBB0_2:
	bl	SPI_MUTEX_LOCK
	adrp	x8, SPI_MSBFIRST
	ldr	x8, [x8, :lo12:SPI_MSBFIRST]
	ldr	x9, [sp]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	wzr, [x8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	wzr, [x8, #4]
	b	.LBB0_7
.LBB0_4:
	adrp	x8, SPI_LSBFIRST
	ldr	x8, [x8, :lo12:SPI_LSBFIRST]
	ldr	x9, [sp]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	str	w8, [x9, #4]
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	bl	SPI_MUTEX_UNLOCK
	b	.LBB0_8
.LBB0_8:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	spiSetBitOrder, .Lfunc_end0-spiSetBitOrder
                                        // -- End function
	.type	SPI_MSBFIRST,@object            // @SPI_MSBFIRST
	.bss
	.globl	SPI_MSBFIRST
	.p2align	3
SPI_MSBFIRST:
	.xword	0                               // 0x0
	.size	SPI_MSBFIRST, 8
	.type	SPI_LSBFIRST,@object            // @SPI_LSBFIRST
	.globl	SPI_LSBFIRST
	.p2align	3
SPI_LSBFIRST:
	.xword	0                               // 0x0
	.size	SPI_LSBFIRST, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK
	.addrsig_sym SPI_MSBFIRST
	.addrsig_sym SPI_LSBFIRST