	.text
	.globl	spiSetDataMode                  // -- Begin function spiSetDataMode
	.p2align	2
	.type	spiSetDataMode,@function
spiSetDataMode:                         // @spiSetDataMode
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_10
.LBB0_2:
	bl	SPI_MUTEX_LOCK
	ldur	w8, [x29, #-12]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	subs	x8, x8, #3
	b.hi	.LBB0_8
// %bb.3:
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	wzr, [x8, #4]
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9]
	b	.LBB0_9
.LBB0_5:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9, #4]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	str	w8, [x9]
	b	.LBB0_9
.LBB0_6:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9, #4]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	wzr, [x8]
	b	.LBB0_9
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	wzr, [x8, #4]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	wzr, [x8]
	b	.LBB0_9
.LBB0_9:
	bl	SPI_MUTEX_UNLOCK
	b	.LBB0_10
.LBB0_10:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	spiSetDataMode, .Lfunc_end0-spiSetDataMode
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_7-.Ltmp0
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK