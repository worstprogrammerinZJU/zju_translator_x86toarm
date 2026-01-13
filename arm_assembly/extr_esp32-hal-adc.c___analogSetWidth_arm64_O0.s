	.text
	.globl	__analogSetWidth                // -- Begin function __analogSetWidth
	.p2align	2
	.type	__analogSetWidth,@function
__analogSetWidth:                       // @__analogSetWidth
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #9
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #9
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #12
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #12
	stur	w8, [x29, #-4]
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	ldur	w8, [x29, #-4]
	adrp	x9, __analogReturnedWidth
	str	w8, [x9, :lo12:__analogReturnedWidth]
	ldur	w8, [x29, #-4]
	subs	w9, w8, #9
	adrp	x8, __analogWidth
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	str	w9, [x8, :lo12:__analogWidth]
	adrp	x9, SENS_SAR_START_FORCE_REG
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	ldr	w0, [x9, :lo12:SENS_SAR_START_FORCE_REG]
	adrp	x9, SENS_SAR1_BIT_WIDTH
	ldr	w1, [x9, :lo12:SENS_SAR1_BIT_WIDTH]
	ldr	w2, [x8, :lo12:__analogWidth]
	adrp	x8, SENS_SAR1_BIT_WIDTH_S
	ldr	w3, [x8, :lo12:SENS_SAR1_BIT_WIDTH_S]
	bl	SET_PERI_REG_BITS
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	adrp	x9, SENS_SAR_READ_CTRL_REG
	ldr	w0, [x9, :lo12:SENS_SAR_READ_CTRL_REG]
	adrp	x9, SENS_SAR1_SAMPLE_BIT
	ldr	w1, [x9, :lo12:SENS_SAR1_SAMPLE_BIT]
	ldr	w2, [x8, :lo12:__analogWidth]
	adrp	x8, SENS_SAR1_SAMPLE_BIT_S
	ldr	w3, [x8, :lo12:SENS_SAR1_SAMPLE_BIT_S]
	bl	SET_PERI_REG_BITS
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x9, :lo12:SENS_SAR_START_FORCE_REG]
	adrp	x9, SENS_SAR2_BIT_WIDTH
	ldr	w1, [x9, :lo12:SENS_SAR2_BIT_WIDTH]
	ldr	w2, [x8, :lo12:__analogWidth]
	adrp	x8, SENS_SAR2_BIT_WIDTH_S
	ldr	w3, [x8, :lo12:SENS_SAR2_BIT_WIDTH_S]
	bl	SET_PERI_REG_BITS
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	adrp	x9, SENS_SAR_READ_CTRL2_REG
	ldr	w0, [x9, :lo12:SENS_SAR_READ_CTRL2_REG]
	adrp	x9, SENS_SAR2_SAMPLE_BIT
	ldr	w1, [x9, :lo12:SENS_SAR2_SAMPLE_BIT]
	ldr	w2, [x8, :lo12:__analogWidth]
	adrp	x8, SENS_SAR2_SAMPLE_BIT_S
	ldr	w3, [x8, :lo12:SENS_SAR2_SAMPLE_BIT_S]
	bl	SET_PERI_REG_BITS
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	__analogSetWidth, .Lfunc_end0-__analogSetWidth
                                        // -- End function
	.type	__analogReturnedWidth,@object   // @__analogReturnedWidth
	.bss
	.globl	__analogReturnedWidth
	.p2align	2
__analogReturnedWidth:
	.word	0                               // 0x0
	.size	__analogReturnedWidth, 4
	.type	__analogWidth,@object           // @__analogWidth
	.globl	__analogWidth
	.p2align	2
__analogWidth:
	.word	0                               // 0x0
	.size	__analogWidth, 4
	.type	SENS_SAR_START_FORCE_REG,@object // @SENS_SAR_START_FORCE_REG
	.globl	SENS_SAR_START_FORCE_REG
	.p2align	2
SENS_SAR_START_FORCE_REG:
	.word	0                               // 0x0
	.size	SENS_SAR_START_FORCE_REG, 4
	.type	SENS_SAR1_BIT_WIDTH,@object     // @SENS_SAR1_BIT_WIDTH
	.globl	SENS_SAR1_BIT_WIDTH
	.p2align	2
SENS_SAR1_BIT_WIDTH:
	.word	0                               // 0x0
	.size	SENS_SAR1_BIT_WIDTH, 4
	.type	SENS_SAR1_BIT_WIDTH_S,@object   // @SENS_SAR1_BIT_WIDTH_S
	.globl	SENS_SAR1_BIT_WIDTH_S
	.p2align	2
SENS_SAR1_BIT_WIDTH_S:
	.word	0                               // 0x0
	.size	SENS_SAR1_BIT_WIDTH_S, 4
	.type	SENS_SAR_READ_CTRL_REG,@object  // @SENS_SAR_READ_CTRL_REG
	.globl	SENS_SAR_READ_CTRL_REG
	.p2align	2
SENS_SAR_READ_CTRL_REG:
	.word	0                               // 0x0
	.size	SENS_SAR_READ_CTRL_REG, 4
	.type	SENS_SAR1_SAMPLE_BIT,@object    // @SENS_SAR1_SAMPLE_BIT
	.globl	SENS_SAR1_SAMPLE_BIT
	.p2align	2
SENS_SAR1_SAMPLE_BIT:
	.word	0                               // 0x0
	.size	SENS_SAR1_SAMPLE_BIT, 4
	.type	SENS_SAR1_SAMPLE_BIT_S,@object  // @SENS_SAR1_SAMPLE_BIT_S
	.globl	SENS_SAR1_SAMPLE_BIT_S
	.p2align	2
SENS_SAR1_SAMPLE_BIT_S:
	.word	0                               // 0x0
	.size	SENS_SAR1_SAMPLE_BIT_S, 4
	.type	SENS_SAR2_BIT_WIDTH,@object     // @SENS_SAR2_BIT_WIDTH
	.globl	SENS_SAR2_BIT_WIDTH
	.p2align	2
SENS_SAR2_BIT_WIDTH:
	.word	0                               // 0x0
	.size	SENS_SAR2_BIT_WIDTH, 4
	.type	SENS_SAR2_BIT_WIDTH_S,@object   // @SENS_SAR2_BIT_WIDTH_S
	.globl	SENS_SAR2_BIT_WIDTH_S
	.p2align	2
SENS_SAR2_BIT_WIDTH_S:
	.word	0                               // 0x0
	.size	SENS_SAR2_BIT_WIDTH_S, 4
	.type	SENS_SAR_READ_CTRL2_REG,@object // @SENS_SAR_READ_CTRL2_REG
	.globl	SENS_SAR_READ_CTRL2_REG
	.p2align	2
SENS_SAR_READ_CTRL2_REG:
	.word	0                               // 0x0
	.size	SENS_SAR_READ_CTRL2_REG, 4
	.type	SENS_SAR2_SAMPLE_BIT,@object    // @SENS_SAR2_SAMPLE_BIT
	.globl	SENS_SAR2_SAMPLE_BIT
	.p2align	2
SENS_SAR2_SAMPLE_BIT:
	.word	0                               // 0x0
	.size	SENS_SAR2_SAMPLE_BIT, 4
	.type	SENS_SAR2_SAMPLE_BIT_S,@object  // @SENS_SAR2_SAMPLE_BIT_S
	.globl	SENS_SAR2_SAMPLE_BIT_S
	.p2align	2
SENS_SAR2_SAMPLE_BIT_S:
	.word	0                               // 0x0
	.size	SENS_SAR2_SAMPLE_BIT_S, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SET_PERI_REG_BITS
	.addrsig_sym __analogReturnedWidth
	.addrsig_sym __analogWidth
	.addrsig_sym SENS_SAR_START_FORCE_REG
	.addrsig_sym SENS_SAR1_BIT_WIDTH
	.addrsig_sym SENS_SAR1_BIT_WIDTH_S
	.addrsig_sym SENS_SAR_READ_CTRL_REG
	.addrsig_sym SENS_SAR1_SAMPLE_BIT
	.addrsig_sym SENS_SAR1_SAMPLE_BIT_S
	.addrsig_sym SENS_SAR2_BIT_WIDTH
	.addrsig_sym SENS_SAR2_BIT_WIDTH_S
	.addrsig_sym SENS_SAR_READ_CTRL2_REG
	.addrsig_sym SENS_SAR2_SAMPLE_BIT
	.addrsig_sym SENS_SAR2_SAMPLE_BIT_S