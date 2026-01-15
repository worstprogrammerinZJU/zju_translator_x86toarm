	.text
	.globl	spiAttachMISO                   // -- Begin function spiAttachMISO
	.p2align	2
	.type	spiAttachMISO,@function
spiAttachMISO:                          // @spiAttachMISO
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
	b	.LBB0_11
.LBB0_2:
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	b.ge	.LBB0_10
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, HSPI
	ldr	x9, [x9, :lo12:HSPI]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	mov	w8, #12
	str	w8, [sp, #4]
	b	.LBB0_9
.LBB0_5:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, VSPI
	ldr	x9, [x9, :lo12:VSPI]
	subs	x8, x8, x9
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	mov	w8, #19
	str	w8, [sp, #4]
	b	.LBB0_8
.LBB0_7:
	mov	w8, #7
	str	w8, [sp, #4]
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	bl	SPI_MUTEX_LOCK
	ldr	w0, [sp, #4]
	adrp	x8, INPUT
	ldr	w1, [x8, :lo12:INPUT]
	bl	pinMode
	ldr	w8, [sp, #4]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	SPI_MISO_IDX
	mov	w1, w0
	ldr	w0, [sp]                        // 4-byte Folded Reload
	mov	w2, wzr
	bl	pinMatrixInAttach
	bl	SPI_MUTEX_UNLOCK
	b	.LBB0_11
.LBB0_11:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	spiAttachMISO, .Lfunc_end0-spiAttachMISO
                                        // -- End function
	.type	HSPI,@object                    // @HSPI
	.bss
	.globl	HSPI
	.p2align	3
HSPI:
	.xword	0                               // 0x0
	.size	HSPI, 8
	.type	VSPI,@object                    // @VSPI
	.globl	VSPI
	.p2align	3
VSPI:
	.xword	0                               // 0x0
	.size	VSPI, 8
	.type	INPUT,@object                   // @INPUT
	.globl	INPUT
	.p2align	2
INPUT:
	.word	0                               // 0x0
	.size	INPUT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym pinMode
	.addrsig_sym pinMatrixInAttach
	.addrsig_sym SPI_MISO_IDX
	.addrsig_sym SPI_MUTEX_UNLOCK
	.addrsig_sym HSPI
	.addrsig_sym VSPI
	.addrsig_sym INPUT