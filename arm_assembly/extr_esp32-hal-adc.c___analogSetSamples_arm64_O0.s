	.text
	.globl	__analogSetSamples              // -- Begin function __analogSetSamples
	.p2align	2
	.type	__analogSetSamples,@function
__analogSetSamples:                     // @__analogSetSamples
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
	ldr	x8, [sp, #8]
	subs	x9, x8, #1
	adrp	x8, __analogSamples
	str	x8, [sp]                        // 8-byte Folded Spill
	str	x9, [x8, :lo12:__analogSamples]
	adrp	x9, SENS_SAR_READ_CTRL_REG
	ldr	w0, [x9, :lo12:SENS_SAR_READ_CTRL_REG]
	adrp	x9, SENS_SAR1_SAMPLE_NUM
	ldr	w1, [x9, :lo12:SENS_SAR1_SAMPLE_NUM]
	ldr	x2, [x8, :lo12:__analogSamples]
	adrp	x8, SENS_SAR1_SAMPLE_NUM_S
	ldr	w3, [x8, :lo12:SENS_SAR1_SAMPLE_NUM_S]
	bl	SET_PERI_REG_BITS
	ldr	x8, [sp]                        // 8-byte Folded Reload
	adrp	x9, SENS_SAR_READ_CTRL2_REG
	ldr	w0, [x9, :lo12:SENS_SAR_READ_CTRL2_REG]
	adrp	x9, SENS_SAR2_SAMPLE_NUM
	ldr	w1, [x9, :lo12:SENS_SAR2_SAMPLE_NUM]
	ldr	x2, [x8, :lo12:__analogSamples]
	adrp	x8, SENS_SAR2_SAMPLE_NUM_S
	ldr	w3, [x8, :lo12:SENS_SAR2_SAMPLE_NUM_S]
	bl	SET_PERI_REG_BITS
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	__analogSetSamples, .Lfunc_end0-__analogSetSamples
                                        // -- End function
	.type	__analogSamples,@object         // @__analogSamples
	.bss
	.globl	__analogSamples
	.p2align	3
__analogSamples:
	.xword	0                               // 0x0
	.size	__analogSamples, 8
	.type	SENS_SAR_READ_CTRL_REG,@object  // @SENS_SAR_READ_CTRL_REG
	.globl	SENS_SAR_READ_CTRL_REG
	.p2align	2
SENS_SAR_READ_CTRL_REG:
	.word	0                               // 0x0
	.size	SENS_SAR_READ_CTRL_REG, 4
	.type	SENS_SAR1_SAMPLE_NUM,@object    // @SENS_SAR1_SAMPLE_NUM
	.globl	SENS_SAR1_SAMPLE_NUM
	.p2align	2
SENS_SAR1_SAMPLE_NUM:
	.word	0                               // 0x0
	.size	SENS_SAR1_SAMPLE_NUM, 4
	.type	SENS_SAR1_SAMPLE_NUM_S,@object  // @SENS_SAR1_SAMPLE_NUM_S
	.globl	SENS_SAR1_SAMPLE_NUM_S
	.p2align	2
SENS_SAR1_SAMPLE_NUM_S:
	.word	0                               // 0x0
	.size	SENS_SAR1_SAMPLE_NUM_S, 4
	.type	SENS_SAR_READ_CTRL2_REG,@object // @SENS_SAR_READ_CTRL2_REG
	.globl	SENS_SAR_READ_CTRL2_REG
	.p2align	2
SENS_SAR_READ_CTRL2_REG:
	.word	0                               // 0x0
	.size	SENS_SAR_READ_CTRL2_REG, 4
	.type	SENS_SAR2_SAMPLE_NUM,@object    // @SENS_SAR2_SAMPLE_NUM
	.globl	SENS_SAR2_SAMPLE_NUM
	.p2align	2
SENS_SAR2_SAMPLE_NUM:
	.word	0                               // 0x0
	.size	SENS_SAR2_SAMPLE_NUM, 4
	.type	SENS_SAR2_SAMPLE_NUM_S,@object  // @SENS_SAR2_SAMPLE_NUM_S
	.globl	SENS_SAR2_SAMPLE_NUM_S
	.p2align	2
SENS_SAR2_SAMPLE_NUM_S:
	.word	0                               // 0x0
	.size	SENS_SAR2_SAMPLE_NUM_S, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SET_PERI_REG_BITS
	.addrsig_sym __analogSamples
	.addrsig_sym SENS_SAR_READ_CTRL_REG
	.addrsig_sym SENS_SAR1_SAMPLE_NUM
	.addrsig_sym SENS_SAR1_SAMPLE_NUM_S
	.addrsig_sym SENS_SAR_READ_CTRL2_REG
	.addrsig_sym SENS_SAR2_SAMPLE_NUM
	.addrsig_sym SENS_SAR2_SAMPLE_NUM_S