	.text
	.globl	decimal32ToEngString            // -- Begin function decimal32ToEngString
	.p2align	2
	.type	decimal32ToEngString,@function
decimal32ToEngString:                   // @decimal32ToEngString
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	add	x1, sp, #12
	str	x1, [sp]                        // 8-byte Folded Spill
	bl	decimal32ToNumber
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	decNumberToEngString
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decimal32ToEngString, .Lfunc_end0-decimal32ToEngString
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decimal32ToNumber
	.addrsig_sym decNumberToEngString