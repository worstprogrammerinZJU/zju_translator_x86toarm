	.text
	.globl	pulseIn                         // -- Begin function pulseIn
	.p2align	2
	.type	pulseIn,@function
pulseIn:                                // @pulseIn
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	x2, [x29, #-16]
	adrp	x8, UINT_MAX
	ldr	x0, [x8, :lo12:UINT_MAX]
	bl	clockCyclesToMicroseconds
	str	x0, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.ls	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-16]
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-16]
	bl	microsecondsToClockCycles
	str	x0, [sp, #16]
	bl	xthal_get_ccount
	str	x0, [sp, #8]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	WAIT_FOR_PIN_STATE
	ldur	w0, [x29, #-8]
	bl	WAIT_FOR_PIN_STATE
	bl	xthal_get_ccount
	str	x0, [sp]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	WAIT_FOR_PIN_STATE
	bl	xthal_get_ccount
	ldr	x8, [sp]
	subs	x0, x0, x8
	bl	clockCyclesToMicroseconds
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	pulseIn, .Lfunc_end0-pulseIn
                                        // -- End function
	.type	UINT_MAX,@object                // @UINT_MAX
	.section	.rodata,"a",@progbits
	.globl	UINT_MAX
	.p2align	3
UINT_MAX:
	.xword	0                               // 0x0
	.size	UINT_MAX, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym clockCyclesToMicroseconds
	.addrsig_sym microsecondsToClockCycles
	.addrsig_sym xthal_get_ccount
	.addrsig_sym WAIT_FOR_PIN_STATE
	.addrsig_sym UINT_MAX