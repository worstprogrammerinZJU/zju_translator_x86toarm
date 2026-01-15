	.text
	.globl	spiTransferLong                 // -- Begin function spiTransferLong
	.p2align	2
	.type	spiTransferLong,@function
spiTransferLong:                        // @spiTransferLong
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_10
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w8, [x8, #4]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #12]
	bl	__spiTranslate32
	str	w0, [sp, #12]
	b	.LBB0_4
.LBB0_4:
	bl	SPI_MUTEX_LOCK
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	mov	w8, #31
	str	w8, [x9, #24]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	str	w8, [x9, #20]
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	str	w8, [x9]
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9, #16]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w8, [x8, #16]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_5
.LBB0_7:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	bl	SPI_MUTEX_UNLOCK
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	w0, [sp, #12]
	bl	__spiTranslate32
	str	w0, [sp, #12]
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	spiTransferLong, .Lfunc_end0-spiTransferLong
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __spiTranslate32
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK