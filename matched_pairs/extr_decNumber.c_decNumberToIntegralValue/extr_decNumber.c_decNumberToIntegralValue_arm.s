	.text
	.globl	decNumberToIntegralValue        // -- Begin function decNumberToIntegralValue
	.p2align	2
	.type	decNumberToIntegralValue,@function
decNumberToIntegralValue:               // @decNumberToIntegralValue
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	q0, [x8]
	mov	x2, sp
	str	q0, [sp]
	str	xzr, [sp, #8]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	decNumberToIntegralExact
	ldr	w8, [sp]
	adrp	x9, DEC_Invalid_operation
	ldr	w9, [x9, :lo12:DEC_Invalid_operation]
	and	w10, w8, w9
	ldr	x9, [sp, #24]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	decNumberToIntegralValue, .Lfunc_end0-decNumberToIntegralValue
                                        // -- End function
	.type	DEC_Invalid_operation,@object   // @DEC_Invalid_operation
	.bss
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.word	0                               // 0x0
	.size	DEC_Invalid_operation, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberToIntegralExact
	.addrsig_sym DEC_Invalid_operation