	.text
	.globl	__analogSetClockDiv             // -- Begin function __analogSetClockDiv
	.p2align	2
	.type	__analogSetClockDiv,@function
__analogSetClockDiv:                    // @__analogSetClockDiv
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
	ldr	x9, [sp, #8]
	adrp	x8, __analogClockDiv
	str	x8, [sp]                        // 8-byte Folded Spill
	str	x9, [x8, :lo12:__analogClockDiv]
	adrp	x9, SENS_SAR_READ_CTRL_REG
	ldr	w0, [x9, :lo12:SENS_SAR_READ_CTRL_REG]
	adrp	x9, SENS_SAR1_CLK_DIV
	ldr	w1, [x9, :lo12:SENS_SAR1_CLK_DIV]
	ldr	x2, [x8, :lo12:__analogClockDiv]
	adrp	x8, SENS_SAR1_CLK_DIV_S
	ldr	w3, [x8, :lo12:SENS_SAR1_CLK_DIV_S]
	bl	SET_PERI_REG_BITS
	ldr	x8, [sp]                        // 8-byte Folded Reload
	adrp	x9, SENS_SAR_READ_CTRL2_REG
	ldr	w0, [x9, :lo12:SENS_SAR_READ_CTRL2_REG]
	adrp	x9, SENS_SAR2_CLK_DIV
	ldr	w1, [x9, :lo12:SENS_SAR2_CLK_DIV]
	ldr	x2, [x8, :lo12:__analogClockDiv]
	adrp	x8, SENS_SAR2_CLK_DIV_S
	ldr	w3, [x8, :lo12:SENS_SAR2_CLK_DIV_S]
	bl	SET_PERI_REG_BITS
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	__analogSetClockDiv, .Lfunc_end0-__analogSetClockDiv
                                        // -- End function
	.type	__analogClockDiv,@object        // @__analogClockDiv
	.bss
	.globl	__analogClockDiv
	.p2align	3
__analogClockDiv:
	.xword	0                               // 0x0
	.size	__analogClockDiv, 8
	.type	SENS_SAR_READ_CTRL_REG,@object  // @SENS_SAR_READ_CTRL_REG
	.globl	SENS_SAR_READ_CTRL_REG
	.p2align	2
SENS_SAR_READ_CTRL_REG:
	.word	0                               // 0x0
	.size	SENS_SAR_READ_CTRL_REG, 4
	.type	SENS_SAR1_CLK_DIV,@object       // @SENS_SAR1_CLK_DIV
	.globl	SENS_SAR1_CLK_DIV
	.p2align	2
SENS_SAR1_CLK_DIV:
	.word	0                               // 0x0
	.size	SENS_SAR1_CLK_DIV, 4
	.type	SENS_SAR1_CLK_DIV_S,@object     // @SENS_SAR1_CLK_DIV_S
	.globl	SENS_SAR1_CLK_DIV_S
	.p2align	2
SENS_SAR1_CLK_DIV_S:
	.word	0                               // 0x0
	.size	SENS_SAR1_CLK_DIV_S, 4
	.type	SENS_SAR_READ_CTRL2_REG,@object // @SENS_SAR_READ_CTRL2_REG
	.globl	SENS_SAR_READ_CTRL2_REG
	.p2align	2
SENS_SAR_READ_CTRL2_REG:
	.word	0                               // 0x0
	.size	SENS_SAR_READ_CTRL2_REG, 4
	.type	SENS_SAR2_CLK_DIV,@object       // @SENS_SAR2_CLK_DIV
	.globl	SENS_SAR2_CLK_DIV
	.p2align	2
SENS_SAR2_CLK_DIV:
	.word	0                               // 0x0
	.size	SENS_SAR2_CLK_DIV, 4
	.type	SENS_SAR2_CLK_DIV_S,@object     // @SENS_SAR2_CLK_DIV_S
	.globl	SENS_SAR2_CLK_DIV_S
	.p2align	2
SENS_SAR2_CLK_DIV_S:
	.word	0                               // 0x0
	.size	SENS_SAR2_CLK_DIV_S, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SET_PERI_REG_BITS
	.addrsig_sym __analogClockDiv
	.addrsig_sym SENS_SAR_READ_CTRL_REG
	.addrsig_sym SENS_SAR1_CLK_DIV
	.addrsig_sym SENS_SAR1_CLK_DIV_S
	.addrsig_sym SENS_SAR_READ_CTRL2_REG
	.addrsig_sym SENS_SAR2_CLK_DIV
	.addrsig_sym SENS_SAR2_CLK_DIV_S