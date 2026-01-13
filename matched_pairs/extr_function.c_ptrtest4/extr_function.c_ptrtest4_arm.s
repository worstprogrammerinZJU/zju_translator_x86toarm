	.text
	.globl	ptrtest4                        // -- Begin function ptrtest4
	.p2align	2
	.type	ptrtest4,@function
ptrtest4:                               // @ptrtest4
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w0, [sp, #4]
	blr	x8
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ptrtest4, .Lfunc_end0-ptrtest4
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig