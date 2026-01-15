	.text
	.globl	spiGetDataMode                  // -- Begin function spiGetDataMode
	.p2align	2
	.type	spiGetDataMode,@function
spiGetDataMode:                         // @spiGetDataMode
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #28]
	b	.LBB0_9
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w8, [x8, #4]
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w8, [x8]
	str	w8, [sp, #8]
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #8]
	cbz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, SPI_MODE2
	ldr	w8, [x8, :lo12:SPI_MODE2]
	str	w8, [sp, #28]
	b	.LBB0_9
.LBB0_5:
	adrp	x8, SPI_MODE3
	ldr	w8, [x8, :lo12:SPI_MODE3]
	str	w8, [sp, #28]
	b	.LBB0_9
.LBB0_6:
	ldr	w8, [sp, #8]
	cbz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, SPI_MODE1
	ldr	w8, [x8, :lo12:SPI_MODE1]
	str	w8, [sp, #28]
	b	.LBB0_9
.LBB0_8:
	adrp	x8, SPI_MODE0
	ldr	w8, [x8, :lo12:SPI_MODE0]
	str	w8, [sp, #28]
	b	.LBB0_9
.LBB0_9:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	spiGetDataMode, .Lfunc_end0-spiGetDataMode
                                        // -- End function
	.type	SPI_MODE2,@object               // @SPI_MODE2
	.bss
	.globl	SPI_MODE2
	.p2align	2
SPI_MODE2:
	.word	0                               // 0x0
	.size	SPI_MODE2, 4
	.type	SPI_MODE3,@object               // @SPI_MODE3
	.globl	SPI_MODE3
	.p2align	2
SPI_MODE3:
	.word	0                               // 0x0
	.size	SPI_MODE3, 4
	.type	SPI_MODE1,@object               // @SPI_MODE1
	.globl	SPI_MODE1
	.p2align	2
SPI_MODE1:
	.word	0                               // 0x0
	.size	SPI_MODE1, 4
	.type	SPI_MODE0,@object               // @SPI_MODE0
	.globl	SPI_MODE0
	.p2align	2
SPI_MODE0:
	.word	0                               // 0x0
	.size	SPI_MODE0, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MODE2
	.addrsig_sym SPI_MODE3
	.addrsig_sym SPI_MODE1
	.addrsig_sym SPI_MODE0