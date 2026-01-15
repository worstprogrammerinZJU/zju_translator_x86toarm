	.text
	.globl	locfile_retain                  // -- Begin function locfile_retain
	.p2align	2
	.type	locfile_retain,@function
locfile_retain:                         // @locfile_retain
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	locfile_retain, .Lfunc_end0-locfile_retain
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig