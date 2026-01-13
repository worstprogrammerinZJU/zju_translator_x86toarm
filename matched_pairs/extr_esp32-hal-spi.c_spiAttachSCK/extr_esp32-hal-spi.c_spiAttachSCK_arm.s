	.text
	.globl	spiAttachSCK                    // -- Begin function spiAttachSCK
	.p2align	2
	.type	spiAttachSCK,@function
spiAttachSCK:                           // @spiAttachSCK
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
	mov	w8, #14
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
	mov	w8, #18
	str	w8, [sp, #4]
	b	.LBB0_8
.LBB0_7:
	mov	w8, #6
	str	w8, [sp, #4]
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	ldr	w0, [sp, #4]
	adrp	x8, OUTPUT
	ldr	w1, [x8, :lo12:OUTPUT]
	bl	pinMode
	ldr	w8, [sp, #4]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	SPI_CLK_IDX
	mov	w1, w0
	ldr	w0, [sp]                        // 4-byte Folded Reload
	mov	w3, wzr
	mov	w2, w3
	bl	pinMatrixOutAttach
	b	.LBB0_11
.LBB0_11:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	spiAttachSCK, .Lfunc_end0-spiAttachSCK
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
	.type	OUTPUT,@object                  // @OUTPUT
	.globl	OUTPUT
	.p2align	2
OUTPUT:
	.word	0                               // 0x0
	.size	OUTPUT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pinMode
	.addrsig_sym pinMatrixOutAttach
	.addrsig_sym SPI_CLK_IDX
	.addrsig_sym HSPI
	.addrsig_sym VSPI
	.addrsig_sym OUTPUT