	.text
	.globl	spiWriteWord                    // -- Begin function spiWriteWord
	.p2align	2
	.type	spiWriteWord,@function
spiWriteWord:                           // @spiWriteWord
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
	b	.LBB0_8
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w8, [x8, #28]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #4]
	lsl	w8, w8, #8
	orr	w8, w8, w9, asr #8
	str	w8, [sp, #4]
	b	.LBB0_4
.LBB0_4:
	bl	SPI_MUTEX_LOCK
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	mov	w8, #15
	str	w8, [x9, #24]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	xzr, [x8, #16]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	ldr	x9, [x9]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9, #8]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w8, [x8, #8]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_5
.LBB0_7:
	bl	SPI_MUTEX_UNLOCK
	b	.LBB0_8
.LBB0_8:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	spiWriteWord, .Lfunc_end0-spiWriteWord
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK