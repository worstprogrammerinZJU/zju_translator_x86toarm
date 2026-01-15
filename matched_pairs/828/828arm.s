	.text
	.globl	spiWrite                        // -- Begin function spiWrite
	.p2align	2
	.type	spiWrite,@function
spiWrite:                               // @spiWrite
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldur	x8, [x29, #-8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_12
.LBB0_2:
	ldr	w8, [sp, #12]
	subs	w8, w8, #16
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #16
	str	w8, [sp, #12]
	b	.LBB0_4
.LBB0_4:
	bl	SPI_MUTEX_LOCK
	ldr	w8, [sp, #12]
	lsl	w8, w8, #5
	subs	w8, w8, #1
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	str	w8, [x9, #24]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	xzr, [x8, #16]
	str	wzr, [sp, #8]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #8]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #8]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_5
.LBB0_8:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w8, [x8]
	cbz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_9
.LBB0_11:
	bl	SPI_MUTEX_UNLOCK
	b	.LBB0_12
.LBB0_12:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	spiWrite, .Lfunc_end0-spiWrite
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK