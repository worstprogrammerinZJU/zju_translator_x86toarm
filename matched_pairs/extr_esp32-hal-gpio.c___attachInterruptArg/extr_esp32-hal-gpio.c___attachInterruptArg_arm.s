	.text
	.globl	__attachInterruptArg            // -- Begin function __attachInterruptArg
	.p2align	2
	.type	__attachInterruptArg,@function
__attachInterruptArg:                   // @__attachInterruptArg
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	str	x2, [sp, #16]
	str	w3, [sp, #12]
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-8]
	ldr	x2, [sp, #16]
	ldr	w3, [sp, #12]
	mov	w4, wzr
	bl	__attachInterruptFunctionalArg
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	__attachInterruptArg, .Lfunc_end0-__attachInterruptArg
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __attachInterruptFunctionalArg