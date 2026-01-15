	.text
	.globl	decFloatIsSignalling            // -- Begin function decFloatIsSignalling
	.p2align	2
	.type	decFloatIsSignalling,@function
decFloatIsSignalling:                   // @decFloatIsSignalling
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	DFISSNAN
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decFloatIsSignalling, .Lfunc_end0-decFloatIsSignalling
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSNAN