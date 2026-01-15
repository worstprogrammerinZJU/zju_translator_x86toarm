	.text
	.globl	spiTransferBytes                // -- Begin function spiTransferBytes
	.p2align	2
	.type	spiTransferBytes,@function
spiTransferBytes:                       // @spiTransferBytes
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	w3, [sp, #4]
	ldur	x8, [x29, #-8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_13
.LBB0_2:
	bl	SPI_MUTEX_LOCK
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	cbz	w8, .LBB0_12
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #64
	b.le	.LBB0_10
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	mov	w3, #64
	bl	__spiTransferBytes
	ldr	w8, [sp, #4]
	subs	w8, w8, #64
	str	w8, [sp, #4]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #256
	str	x8, [sp, #16]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #256
	str	x8, [sp, #8]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_11
.LBB0_10:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	w3, [sp, #4]
	bl	__spiTransferBytes
	str	wzr, [sp, #4]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_3
.LBB0_12:
	bl	SPI_MUTEX_UNLOCK
	b	.LBB0_13
.LBB0_13:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	spiTransferBytes, .Lfunc_end0-spiTransferBytes
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym __spiTransferBytes
	.addrsig_sym SPI_MUTEX_UNLOCK