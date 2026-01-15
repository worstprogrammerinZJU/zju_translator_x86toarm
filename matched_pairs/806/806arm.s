	.text
	.globl	spiFrequencyToClockDiv          // -- Begin function spiFrequencyToClockDiv
	.p2align	2
	.type	spiFrequencyToClockDiv,@function
spiFrequencyToClockDiv:                 // @spiFrequencyToClockDiv
// %bb.0:
	sub	sp, sp, #208
	stp	x29, x30, [sp, #192]            // 16-byte Folded Spill
	add	x29, sp, #192
	stur	x0, [x29, #-16]
	bl	getApbFrequency
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.lt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, SPI_CLK_EQU_SYSCLK
	ldr	x8, [x8, :lo12:SPI_CLK_EQU_SYSCLK]
	stur	x8, [x29, #-8]
	b	.LBB0_26
.LBB0_2:
	adrp	x8, .L__const.spiFrequencyToClockDiv.minFreqReg
	add	x8, x8, :lo12:.L__const.spiFrequencyToClockDiv.minFreqReg
	ldr	q0, [x8]
	sub	x0, x29, #64
	stur	q0, [x29, #-64]
	ldr	q0, [x8, #16]
	stur	q0, [x29, #-48]
	bl	ClkRegToFreq
	stur	x0, [x29, #-72]
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-72]
	subs	x8, x8, x9
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-56]
	stur	x8, [x29, #-8]
	b	.LBB0_26
.LBB0_4:
	mov	w8, #1
	stur	w8, [x29, #-76]
	movi	v0.2d, #0000000000000000
	str	q0, [sp, #80]
	str	q0, [sp, #96]
	str	wzr, [sp, #76]
	b	.LBB0_5
.LBB0_5:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_7 Depth 2
	ldur	w8, [x29, #-76]
	subs	w8, w8, #63
	b.gt	.LBB0_25
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	movi	v0.2d, #0000000000000000
	str	q0, [sp, #32]
	str	q0, [sp, #48]
	mov	x8, #-2
	str	x8, [sp, #16]
	ldur	w8, [x29, #-76]
	str	w8, [sp, #48]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #16]
	add	x9, x8, #1
	str	x9, [sp, #16]
	subs	x8, x8, #1
	b.gt	.LBB0_22
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=2
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #48]
	add	w10, w9, #1
                                        // implicit-def: $x9
	mov	w9, w10
	sxtw	x9, w9
	sdiv	x8, x8, x9
	ldur	x9, [x29, #-16]
	sdiv	x8, x8, x9
	subs	x8, x8, #1
	ldr	x9, [sp, #16]
	add	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #24]
	ldr	w8, [sp, #24]
	subs	w8, w8, #2, lsl #12             // =8192
	b.lt	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=2
	mov	w8, #8191
	str	w8, [sp, #52]
	b	.LBB0_14
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	b.gt	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=2
	str	wzr, [sp, #52]
	b	.LBB0_13
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #24]
	str	w8, [sp, #52]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_7 Depth=2
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_7 Depth=2
	add	x0, sp, #32
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	mov	w9, #2
	sdiv	w8, w8, w9
	str	w8, [sp, #56]
	bl	ClkRegToFreq
	mov	w8, w0
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	ldur	x9, [x29, #-16]
                                        // kill: def $w9 killed $w9 killed $x9
	subs	w8, w8, w9
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_5 Depth=1
	add	x0, sp, #80
	add	x1, sp, #32
	mov	w2, #32
	bl	memcpy
	b	.LBB0_22
.LBB0_16:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #28]
	ldur	x9, [x29, #-16]
                                        // kill: def $w9 killed $w9 killed $x9
	subs	w8, w8, w9
	b.ge	.LBB0_20
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_7 Depth=2
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #28]
	subs	x8, x8, x9
	mov	w0, w8
	bl	abs
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #76]
	subs	x8, x8, x9
	mov	w0, w8
	bl	abs
	mov	x8, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	subs	x8, x0, x8
	b.ge	.LBB0_19
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #28]
	str	w8, [sp, #76]
	add	x0, sp, #80
	add	x1, sp, #32
	mov	w2, #32
	bl	memcpy
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_7 Depth=2
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_7 Depth=2
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_7 Depth=2
	b	.LBB0_7
.LBB0_22:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #28]
	ldur	x9, [x29, #-16]
                                        // kill: def $w9 killed $w9 killed $x9
	subs	w8, w8, w9
	b.ne	.LBB0_24
	b	.LBB0_23
.LBB0_23:
	b	.LBB0_25
.LBB0_24:                               //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-76]
	add	w8, w8, #1
	stur	w8, [x29, #-76]
	b	.LBB0_5
.LBB0_25:
	ldr	x8, [sp, #88]
	stur	x8, [x29, #-8]
	b	.LBB0_26
.LBB0_26:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #192]            // 16-byte Folded Reload
	add	sp, sp, #208
	ret
.Lfunc_end0:
	.size	spiFrequencyToClockDiv, .Lfunc_end0-spiFrequencyToClockDiv
                                        // -- End function
	.type	SPI_CLK_EQU_SYSCLK,@object      // @SPI_CLK_EQU_SYSCLK
	.bss
	.globl	SPI_CLK_EQU_SYSCLK
	.p2align	3
SPI_CLK_EQU_SYSCLK:
	.xword	0                               // 0x0
	.size	SPI_CLK_EQU_SYSCLK, 8
	.type	.L__const.spiFrequencyToClockDiv.minFreqReg,@object // @__const.spiFrequencyToClockDiv.minFreqReg
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3
.L__const.spiFrequencyToClockDiv.minFreqReg:
	.word	2147479552                      // 0x7ffff000
	.zero	4
	.xword	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	4
	.size	.L__const.spiFrequencyToClockDiv.minFreqReg, 32
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getApbFrequency
	.addrsig_sym ClkRegToFreq
	.addrsig_sym memcpy
	.addrsig_sym abs
	.addrsig_sym SPI_CLK_EQU_SYSCLK