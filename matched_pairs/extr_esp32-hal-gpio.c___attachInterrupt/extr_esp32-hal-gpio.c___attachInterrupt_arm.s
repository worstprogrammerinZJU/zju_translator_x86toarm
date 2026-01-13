	.text
	.globl	__attachInterrupt               // -- Begin function __attachInterrupt
	.p2align	2
	.type	__attachInterrupt,@function
__attachInterrupt:                      // @__attachInterrupt
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldur	w0, [x29, #-4]
	ldr	x8, [sp, #16]
	mov	w1, w8
	ldr	w3, [sp, #12]
	mov	x2, xzr
	mov	w4, wzr
	bl	__attachInterruptFunctionalArg
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	__attachInterrupt, .Lfunc_end0-__attachInterrupt
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __attachInterruptFunctionalArg