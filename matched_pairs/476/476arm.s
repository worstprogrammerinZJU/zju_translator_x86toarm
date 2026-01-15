	.text
	.globl	ctfailnow                       // -- Begin function ctfailnow
	.p2align	2
	.type	ctfailnow,@function
ctfailnow:                              // @ctfailnow
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	x0, xzr
	bl	fflush
	bl	abort
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	ctfailnow, .Lfunc_end0-ctfailnow
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fflush
	.addrsig_sym abort