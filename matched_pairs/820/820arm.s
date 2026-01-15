	.text
	.globl	spiTransaction                  // -- Begin function spiTransaction
	.p2align	2
	.type	spiTransaction,@function
spiTransaction:                         // @spiTransaction
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	str	w3, [sp, #12]
	ldur	x8, [x29, #-8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_14
.LBB0_2:
	bl	SPI_MUTEX_LOCK
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	str	w8, [x9, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #3
	b.hi	.LBB0_8
// %bb.3:
	ldr	x11, [sp]                       // 8-byte Folded Reload
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
	str	wzr, [x8, #12]
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9, #8]
	b	.LBB0_9
.LBB0_5:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9, #12]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	str	w8, [x9, #8]
	b	.LBB0_9
.LBB0_6:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9, #12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	wzr, [x8, #8]
	b	.LBB0_9
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	wzr, [x8, #12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	wzr, [x8, #8]
	b	.LBB0_9
.LBB0_9:
	adrp	x8, SPI_MSBFIRST
	ldr	w8, [x8, :lo12:SPI_MSBFIRST]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	wzr, [x8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	wzr, [x8, #4]
	b	.LBB0_14
.LBB0_11:
	adrp	x8, SPI_LSBFIRST
	ldr	w8, [x8, :lo12:SPI_LSBFIRST]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ne	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	str	w8, [x9, #4]
	b	.LBB0_13
.LBB0_13:
	b	.LBB0_14
.LBB0_14:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	spiTransaction, .Lfunc_end0-spiTransaction
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_7-.Ltmp0
                                        // -- End function
	.type	SPI_MSBFIRST,@object            // @SPI_MSBFIRST
	.bss
	.globl	SPI_MSBFIRST
	.p2align	2
SPI_MSBFIRST:
	.word	0                               // 0x0
	.size	SPI_MSBFIRST, 4
	.type	SPI_LSBFIRST,@object            // @SPI_LSBFIRST
	.globl	SPI_LSBFIRST
	.p2align	2
SPI_LSBFIRST:
	.word	0                               // 0x0
	.size	SPI_LSBFIRST, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MSBFIRST
	.addrsig_sym SPI_LSBFIRST