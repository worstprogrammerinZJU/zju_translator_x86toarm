	.text
	.globl	spiStartBus                     // -- Begin function spiStartBus
	.p2align	2
	.type	spiStartBus,@function
spiStartBus:                            // @spiStartBus
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-12]
	stur	w1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	w3, [sp, #24]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #3
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_17
.LBB0_2:
	adrp	x8, _spi_bus_array
	ldr	x8, [x8, :lo12:_spi_bus_array]
	ldursw	x9, [x29, #-12]
	add	x8, x8, x9, lsl #4
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_6
	b	.LBB0_3
.LBB0_3:
	bl	xSemaphoreCreateMutex
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_17
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldur	w8, [x29, #-12]
	adrp	x9, HSPI
	ldr	w9, [x9, :lo12:HSPI]
	subs	w8, w8, w9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, DPORT_PERIP_CLK_EN_REG
	ldr	w0, [x8, :lo12:DPORT_PERIP_CLK_EN_REG]
	adrp	x8, DPORT_SPI_CLK_EN
	ldr	w1, [x8, :lo12:DPORT_SPI_CLK_EN]
	bl	DPORT_SET_PERI_REG_MASK
	adrp	x8, DPORT_PERIP_RST_EN_REG
	ldr	w0, [x8, :lo12:DPORT_PERIP_RST_EN_REG]
	adrp	x8, DPORT_SPI_RST
	ldr	w1, [x8, :lo12:DPORT_SPI_RST]
	bl	DPORT_CLEAR_PERI_REG_MASK
	b	.LBB0_12
.LBB0_8:
	ldur	w8, [x29, #-12]
	adrp	x9, VSPI
	ldr	w9, [x9, :lo12:VSPI]
	subs	w8, w8, w9
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, DPORT_PERIP_CLK_EN_REG
	ldr	w0, [x8, :lo12:DPORT_PERIP_CLK_EN_REG]
	adrp	x8, DPORT_SPI_CLK_EN_2
	ldr	w1, [x8, :lo12:DPORT_SPI_CLK_EN_2]
	bl	DPORT_SET_PERI_REG_MASK
	adrp	x8, DPORT_PERIP_RST_EN_REG
	ldr	w0, [x8, :lo12:DPORT_PERIP_RST_EN_REG]
	adrp	x8, DPORT_SPI_RST_2
	ldr	w1, [x8, :lo12:DPORT_SPI_RST_2]
	bl	DPORT_CLEAR_PERI_REG_MASK
	b	.LBB0_11
.LBB0_10:
	adrp	x8, DPORT_PERIP_CLK_EN_REG
	ldr	w0, [x8, :lo12:DPORT_PERIP_CLK_EN_REG]
	adrp	x8, DPORT_SPI_CLK_EN_1
	ldr	w1, [x8, :lo12:DPORT_SPI_CLK_EN_1]
	bl	DPORT_SET_PERI_REG_MASK
	adrp	x8, DPORT_PERIP_RST_EN_REG
	ldr	w0, [x8, :lo12:DPORT_PERIP_RST_EN_REG]
	adrp	x8, DPORT_SPI_RST_1
	ldr	w1, [x8, :lo12:DPORT_SPI_RST_1]
	bl	DPORT_CLEAR_PERI_REG_MASK
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	ldr	x0, [sp, #16]
	bl	spiStopBus
	ldr	x0, [sp, #16]
	ldur	w1, [x29, #-20]
	bl	spiSetDataMode
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #24]
	bl	spiSetBitOrder
	ldr	x0, [sp, #16]
	ldur	w1, [x29, #-16]
	bl	spiSetClockDiv
	bl	SPI_MUTEX_LOCK
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9, #8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	str	w8, [x9, #12]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	str	w8, [x9, #16]
	str	wzr, [sp, #12]
	b	.LBB0_13
.LBB0_13:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #16
	b.ge	.LBB0_16
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [x8]
	ldrsw	x10, [sp, #12]
	mov	w8, wzr
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_13
.LBB0_16:
	bl	SPI_MUTEX_UNLOCK
	ldr	x0, [sp, #16]
	adrp	x8, _on_apb_change
	ldr	w1, [x8, :lo12:_on_apb_change]
	bl	addApbChangeCallback
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_17
.LBB0_17:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	spiStartBus, .Lfunc_end0-spiStartBus
                                        // -- End function
	.type	_spi_bus_array,@object          // @_spi_bus_array
	.bss
	.globl	_spi_bus_array
	.p2align	3
_spi_bus_array:
	.xword	0
	.size	_spi_bus_array, 8
	.type	HSPI,@object                    // @HSPI
	.globl	HSPI
	.p2align	2
HSPI:
	.word	0                               // 0x0
	.size	HSPI, 4
	.type	DPORT_PERIP_CLK_EN_REG,@object  // @DPORT_PERIP_CLK_EN_REG
	.globl	DPORT_PERIP_CLK_EN_REG
	.p2align	2
DPORT_PERIP_CLK_EN_REG:
	.word	0                               // 0x0
	.size	DPORT_PERIP_CLK_EN_REG, 4
	.type	DPORT_SPI_CLK_EN,@object        // @DPORT_SPI_CLK_EN
	.globl	DPORT_SPI_CLK_EN
	.p2align	2
DPORT_SPI_CLK_EN:
	.word	0                               // 0x0
	.size	DPORT_SPI_CLK_EN, 4
	.type	DPORT_PERIP_RST_EN_REG,@object  // @DPORT_PERIP_RST_EN_REG
	.globl	DPORT_PERIP_RST_EN_REG
	.p2align	2
DPORT_PERIP_RST_EN_REG:
	.word	0                               // 0x0
	.size	DPORT_PERIP_RST_EN_REG, 4
	.type	DPORT_SPI_RST,@object           // @DPORT_SPI_RST
	.globl	DPORT_SPI_RST
	.p2align	2
DPORT_SPI_RST:
	.word	0                               // 0x0
	.size	DPORT_SPI_RST, 4
	.type	VSPI,@object                    // @VSPI
	.globl	VSPI
	.p2align	2
VSPI:
	.word	0                               // 0x0
	.size	VSPI, 4
	.type	DPORT_SPI_CLK_EN_2,@object      // @DPORT_SPI_CLK_EN_2
	.globl	DPORT_SPI_CLK_EN_2
	.p2align	2
DPORT_SPI_CLK_EN_2:
	.word	0                               // 0x0
	.size	DPORT_SPI_CLK_EN_2, 4
	.type	DPORT_SPI_RST_2,@object         // @DPORT_SPI_RST_2
	.globl	DPORT_SPI_RST_2
	.p2align	2
DPORT_SPI_RST_2:
	.word	0                               // 0x0
	.size	DPORT_SPI_RST_2, 4
	.type	DPORT_SPI_CLK_EN_1,@object      // @DPORT_SPI_CLK_EN_1
	.globl	DPORT_SPI_CLK_EN_1
	.p2align	2
DPORT_SPI_CLK_EN_1:
	.word	0                               // 0x0
	.size	DPORT_SPI_CLK_EN_1, 4
	.type	DPORT_SPI_RST_1,@object         // @DPORT_SPI_RST_1
	.globl	DPORT_SPI_RST_1
	.p2align	2
DPORT_SPI_RST_1:
	.word	0                               // 0x0
	.size	DPORT_SPI_RST_1, 4
	.type	_on_apb_change,@object          // @_on_apb_change
	.globl	_on_apb_change
	.p2align	2
_on_apb_change:
	.word	0                               // 0x0
	.size	_on_apb_change, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xSemaphoreCreateMutex
	.addrsig_sym DPORT_SET_PERI_REG_MASK
	.addrsig_sym DPORT_CLEAR_PERI_REG_MASK
	.addrsig_sym spiStopBus
	.addrsig_sym spiSetDataMode
	.addrsig_sym spiSetBitOrder
	.addrsig_sym spiSetClockDiv
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK
	.addrsig_sym addApbChangeCallback
	.addrsig_sym _spi_bus_array
	.addrsig_sym HSPI
	.addrsig_sym DPORT_PERIP_CLK_EN_REG
	.addrsig_sym DPORT_SPI_CLK_EN
	.addrsig_sym DPORT_PERIP_RST_EN_REG
	.addrsig_sym DPORT_SPI_RST
	.addrsig_sym VSPI
	.addrsig_sym DPORT_SPI_CLK_EN_2
	.addrsig_sym DPORT_SPI_RST_2
	.addrsig_sym DPORT_SPI_CLK_EN_1
	.addrsig_sym DPORT_SPI_RST_1
	.addrsig_sym _on_apb_change