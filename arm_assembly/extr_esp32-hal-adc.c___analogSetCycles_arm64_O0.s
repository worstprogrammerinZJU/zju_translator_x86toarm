	.text
	.globl	__analogSetCycles               // -- Begin function __analogSetCycles
	.p2align	2
	.type	__analogSetCycles,@function
__analogSetCycles:                      // @__analogSetCycles
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w9, [x29, #-4]
	adrp	x8, __analogCycles
	str	x8, [sp]                        // 8-byte Folded Spill
	str	w9, [x8, :lo12:__analogCycles]
	adrp	x9, SENS_SAR_READ_CTRL_REG
	ldr	w0, [x9, :lo12:SENS_SAR_READ_CTRL_REG]
	adrp	x9, SENS_SAR1_SAMPLE_CYCLE
	ldr	w1, [x9, :lo12:SENS_SAR1_SAMPLE_CYCLE]
	ldr	w2, [x8, :lo12:__analogCycles]
	adrp	x8, SENS_SAR1_SAMPLE_CYCLE_S
	ldr	w3, [x8, :lo12:SENS_SAR1_SAMPLE_CYCLE_S]
	bl	SET_PERI_REG_BITS
	ldr	x8, [sp]                        // 8-byte Folded Reload
	adrp	x9, SENS_SAR_READ_CTRL2_REG
	ldr	w0, [x9, :lo12:SENS_SAR_READ_CTRL2_REG]
	adrp	x9, SENS_SAR2_SAMPLE_CYCLE
	ldr	w1, [x9, :lo12:SENS_SAR2_SAMPLE_CYCLE]
	ldr	w2, [x8, :lo12:__analogCycles]
	adrp	x8, SENS_SAR2_SAMPLE_CYCLE_S
	ldr	w3, [x8, :lo12:SENS_SAR2_SAMPLE_CYCLE_S]
	bl	SET_PERI_REG_BITS
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	__analogSetCycles, .Lfunc_end0-__analogSetCycles
                                        // -- End function
	.type	__analogCycles,@object          // @__analogCycles
	.bss
	.globl	__analogCycles
	.p2align	2
__analogCycles:
	.word	0                               // 0x0
	.size	__analogCycles, 4
	.type	SENS_SAR_READ_CTRL_REG,@object  // @SENS_SAR_READ_CTRL_REG
	.globl	SENS_SAR_READ_CTRL_REG
	.p2align	2
SENS_SAR_READ_CTRL_REG:
	.word	0                               // 0x0
	.size	SENS_SAR_READ_CTRL_REG, 4
	.type	SENS_SAR1_SAMPLE_CYCLE,@object  // @SENS_SAR1_SAMPLE_CYCLE
	.globl	SENS_SAR1_SAMPLE_CYCLE
	.p2align	2
SENS_SAR1_SAMPLE_CYCLE:
	.word	0                               // 0x0
	.size	SENS_SAR1_SAMPLE_CYCLE, 4
	.type	SENS_SAR1_SAMPLE_CYCLE_S,@object // @SENS_SAR1_SAMPLE_CYCLE_S
	.globl	SENS_SAR1_SAMPLE_CYCLE_S
	.p2align	2
SENS_SAR1_SAMPLE_CYCLE_S:
	.word	0                               // 0x0
	.size	SENS_SAR1_SAMPLE_CYCLE_S, 4
	.type	SENS_SAR_READ_CTRL2_REG,@object // @SENS_SAR_READ_CTRL2_REG
	.globl	SENS_SAR_READ_CTRL2_REG
	.p2align	2
SENS_SAR_READ_CTRL2_REG:
	.word	0                               // 0x0
	.size	SENS_SAR_READ_CTRL2_REG, 4
	.type	SENS_SAR2_SAMPLE_CYCLE,@object  // @SENS_SAR2_SAMPLE_CYCLE
	.globl	SENS_SAR2_SAMPLE_CYCLE
	.p2align	2
SENS_SAR2_SAMPLE_CYCLE:
	.word	0                               // 0x0
	.size	SENS_SAR2_SAMPLE_CYCLE, 4
	.type	SENS_SAR2_SAMPLE_CYCLE_S,@object // @SENS_SAR2_SAMPLE_CYCLE_S
	.globl	SENS_SAR2_SAMPLE_CYCLE_S
	.p2align	2
SENS_SAR2_SAMPLE_CYCLE_S:
	.word	0                               // 0x0
	.size	SENS_SAR2_SAMPLE_CYCLE_S, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SET_PERI_REG_BITS
	.addrsig_sym __analogCycles
	.addrsig_sym SENS_SAR_READ_CTRL_REG
	.addrsig_sym SENS_SAR1_SAMPLE_CYCLE
	.addrsig_sym SENS_SAR1_SAMPLE_CYCLE_S
	.addrsig_sym SENS_SAR_READ_CTRL2_REG
	.addrsig_sym SENS_SAR2_SAMPLE_CYCLE
	.addrsig_sym SENS_SAR2_SAMPLE_CYCLE_S