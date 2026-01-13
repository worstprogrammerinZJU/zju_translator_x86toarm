	.text
	.globl	decimal64ToEngString            // -- Begin function decimal64ToEngString
	.p2align	2
	.type	decimal64ToEngString,@function
decimal64ToEngString:                   // @decimal64ToEngString
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	add	x1, sp, #12
	str	x1, [sp]                        // 8-byte Folded Spill
	bl	decimal64ToNumber
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	decNumberToEngString
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decimal64ToEngString, .Lfunc_end0-decimal64ToEngString
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decimal64ToNumber
	.addrsig_sym decNumberToEngString