	.text
	.globl	__analogSetAttenuation          // -- Begin function __analogSetAttenuation
	.p2align	2
	.type	__analogSetAttenuation,@function
__analogSetAttenuation:                 // @__analogSetAttenuation
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
	and	w8, w8, #0x3
	adrp	x9, __analogAttenuation
	str	w8, [x9, :lo12:__analogAttenuation]
	str	wzr, [sp, #8]
	mov	w8, #10
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w9, w8, #1
	str	w9, [sp, #4]
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, __analogAttenuation
	ldr	w8, [x8, :lo12:__analogAttenuation]
	ldr	w9, [sp, #4]
	lsl	w9, w9, #1
	lsl	w9, w8, w9
	ldr	w8, [sp, #8]
	orr	w8, w8, w9
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_3:
	adrp	x8, SENS_SAR_ATTEN1_REG
	ldr	w0, [x8, :lo12:SENS_SAR_ATTEN1_REG]
	ldrh	w1, [sp, #8]
	bl	WRITE_PERI_REG
	adrp	x8, SENS_SAR_ATTEN2_REG
	ldr	w0, [x8, :lo12:SENS_SAR_ATTEN2_REG]
	ldr	w1, [sp, #8]
	bl	WRITE_PERI_REG
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	__analogSetAttenuation, .Lfunc_end0-__analogSetAttenuation
                                        // -- End function
	.type	__analogAttenuation,@object     // @__analogAttenuation
	.bss
	.globl	__analogAttenuation
	.p2align	2
__analogAttenuation:
	.word	0                               // 0x0
	.size	__analogAttenuation, 4
	.type	SENS_SAR_ATTEN1_REG,@object     // @SENS_SAR_ATTEN1_REG
	.globl	SENS_SAR_ATTEN1_REG
	.p2align	2
SENS_SAR_ATTEN1_REG:
	.word	0                               // 0x0
	.size	SENS_SAR_ATTEN1_REG, 4
	.type	SENS_SAR_ATTEN2_REG,@object     // @SENS_SAR_ATTEN2_REG
	.globl	SENS_SAR_ATTEN2_REG
	.p2align	2
SENS_SAR_ATTEN2_REG:
	.word	0                               // 0x0
	.size	SENS_SAR_ATTEN2_REG, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym WRITE_PERI_REG
	.addrsig_sym __analogAttenuation
	.addrsig_sym SENS_SAR_ATTEN1_REG
	.addrsig_sym SENS_SAR_ATTEN2_REG