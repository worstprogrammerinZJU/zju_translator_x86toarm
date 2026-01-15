	.text
	.globl	decNumberToIntegralExact        // -- Begin function decNumberToIntegralExact
	.p2align	2
	.type	decNumberToIntegralExact,@function
decNumberToIntegralExact:               // @decNumberToIntegralExact
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	str	wzr, [sp, #28]
	adrp	x8, SPECIALARG
	ldr	x8, [x8, :lo12:SPECIALARG]
	cbz	x8, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-24]
	bl	decNumberIsInfinite
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	decNumberCopy
	b	.LBB0_4
.LBB0_3:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x3, [x29, #-32]
	mov	x2, xzr
	add	x4, sp, #28
	bl	decNaNs
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_8
.LBB0_5:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	tbnz	x8, #63, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	decNumberCopy
	stur	x0, [x29, #-8]
	b	.LBB0_11
.LBB0_7:
	ldur	x8, [x29, #-32]
	ldr	q0, [x8]
	add	x9, sp, #32
	str	x9, [sp, #16]                   // 8-byte Folded Spill
	str	q0, [sp, #32]
	ldr	x8, [x8, #16]
	str	x8, [sp, #48]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	str	w8, [sp, #48]
	str	xzr, [sp, #40]
	sub	x0, x29, #48
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	decNumberZero
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	decNumberQuantize
	ldr	w9, [sp, #32]
	ldr	w8, [sp, #28]
	orr	w8, w8, w9
	str	w8, [sp, #28]
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #28]
	cbz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #28]
	ldur	x2, [x29, #-32]
	bl	decStatus
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_11
.LBB0_11:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	decNumberToIntegralExact, .Lfunc_end0-decNumberToIntegralExact
                                        // -- End function
	.type	SPECIALARG,@object              // @SPECIALARG
	.bss
	.globl	SPECIALARG
	.p2align	3
SPECIALARG:
	.xword	0                               // 0x0
	.size	SPECIALARG, 8
	.type	DECUNUSED,@object               // @DECUNUSED
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.word	0                               // 0x0
	.size	DECUNUSED, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberIsInfinite
	.addrsig_sym decNumberCopy
	.addrsig_sym decNaNs
	.addrsig_sym decNumberZero
	.addrsig_sym decNumberQuantize
	.addrsig_sym decStatus
	.addrsig_sym SPECIALARG