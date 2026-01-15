	.text
	.p2align	2                               // -- Begin function retfunc
	.type	retfunc,@function
retfunc:                                // @retfunc
// %bb.0:
	adrp	x0, t6
	add	x0, x0, :lo12:t6
	ret
.Lfunc_end0:
	.size	retfunc, .Lfunc_end0-retfunc
                                        // -- End function
	.type	t6,@object                      // @t6
	.bss
	.globl	t6
	.p2align	2
t6:
	.word	0                               // 0x0
	.size	t6, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym retfunc
	.addrsig_sym t6