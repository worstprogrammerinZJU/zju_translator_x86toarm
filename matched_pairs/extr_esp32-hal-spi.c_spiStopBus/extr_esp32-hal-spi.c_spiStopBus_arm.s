	.text
	.globl	spiStopBus                      // -- Begin function spiStopBus
	.p2align	2
	.type	spiStopBus,@function
spiStopBus:                             // @spiStopBus
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
	ldr	x8, [x8]
	str	xzr, [x8, #64]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	xzr, [x8, #56]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	xzr, [x8, #48]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	xzr, [x8, #40]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	xzr, [x8, #32]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	xzr, [x8, #24]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	xzr, [x8, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	xzr, [x8]
	bl	SPI_MUTEX_UNLOCK
	ldr	x0, [sp, #8]
	adrp	x8, _on_apb_change
	ldr	w1, [x8, :lo12:_on_apb_change]
	bl	removeApbChangeCallback
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	spiStopBus, .Lfunc_end0-spiStopBus
                                        // -- End function
	.type	_on_apb_change,@object          // @_on_apb_change
	.bss
	.globl	_on_apb_change
	.p2align	2
_on_apb_change:
	.word	0                               // 0x0
	.size	_on_apb_change, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK
	.addrsig_sym removeApbChangeCallback
	.addrsig_sym _on_apb_change