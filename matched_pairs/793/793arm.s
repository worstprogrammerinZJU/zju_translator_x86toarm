	.text
	.p2align	2                               // -- Begin function _on_apb_change
	.type	_on_apb_change,@function
_on_apb_change:                         // @_on_apb_change
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	str	w3, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]
	ldr	x8, [sp, #16]
	adrp	x9, APB_BEFORE_CHANGE
	ldr	x9, [x9, :lo12:APB_BEFORE_CHANGE]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_1
.LBB0_1:
	bl	SPI_MUTEX_LOCK
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	ldr	x8, [x8]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	b	.LBB0_2
.LBB0_4:
	b	.LBB0_6
.LBB0_5:
	ldr	w8, [sp, #12]
	ldr	x9, [sp]
	ldr	x9, [x9]
	ldr	w9, [x9]
	add	w9, w9, #1
	ldr	x10, [sp]
	ldr	x10, [x10]
	ldr	w10, [x10, #4]
	add	w10, w10, #1
	mul	w9, w9, w10
	sdiv	w0, w8, w9
	bl	spiFrequencyToClockDiv
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	w0, [x8, #8]
	bl	SPI_MUTEX_UNLOCK
	b	.LBB0_6
.LBB0_6:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	_on_apb_change, .Lfunc_end0-_on_apb_change
                                        // -- End function
	.type	APB_BEFORE_CHANGE,@object       // @APB_BEFORE_CHANGE
	.bss
	.globl	APB_BEFORE_CHANGE
	.p2align	3
APB_BEFORE_CHANGE:
	.xword	0                               // 0x0
	.size	APB_BEFORE_CHANGE, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _on_apb_change
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym spiFrequencyToClockDiv
	.addrsig_sym SPI_MUTEX_UNLOCK
	.addrsig_sym APB_BEFORE_CHANGE