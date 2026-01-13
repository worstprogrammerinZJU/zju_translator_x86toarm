	.text
	.globl	spiAttachSS                     // -- Begin function spiAttachSS
	.p2align	2
	.type	spiAttachSS,@function
spiAttachSS:                            // @spiAttachSS
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	x8, [x29, #-8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_13
.LBB0_2:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #2
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_13
.LBB0_4:
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	b.ge	.LBB0_12
	b	.LBB0_5
.LBB0_5:
	stur	wzr, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, HSPI
	ldr	x9, [x9, :lo12:HSPI]
	subs	x8, x8, x9
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	mov	w8, #15
	str	w8, [sp, #16]
	b	.LBB0_11
.LBB0_7:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, VSPI
	ldr	x9, [x9, :lo12:VSPI]
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	mov	w8, #5
	str	w8, [sp, #16]
	b	.LBB0_10
.LBB0_9:
	mov	w8, #11
	str	w8, [sp, #16]
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	ldr	w0, [sp, #16]
	adrp	x8, OUTPUT
	ldr	w1, [x8, :lo12:OUTPUT]
	bl	pinMode
	ldr	w8, [sp, #16]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	ldur	w1, [x29, #-12]
	bl	SPI_SS_IDX
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	mov	w3, wzr
	mov	w2, w3
	bl	pinMatrixOutAttach
	ldur	x0, [x29, #-8]
	ldur	w9, [x29, #-12]
	mov	w8, #1
	lsl	w1, w8, w9
	bl	spiEnableSSPins
	b	.LBB0_13
.LBB0_13:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	spiAttachSS, .Lfunc_end0-spiAttachSS
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
	.addrsig_sym SPI_SS_IDX
	.addrsig_sym spiEnableSSPins
	.addrsig_sym HSPI
	.addrsig_sym VSPI
	.addrsig_sym OUTPUT