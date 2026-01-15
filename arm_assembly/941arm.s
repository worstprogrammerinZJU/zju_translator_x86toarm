	.text
	.p2align	2                               // -- Begin function retfunc2
	.type	retfunc2,@function
retfunc2:                               // @retfunc2
// %bb.0:
	adrp	x8, t6
	ldr	w0, [x8, :lo12:t6]
	ret
.Lfunc_end0:
	.size	retfunc2, .Lfunc_end0-retfunc2
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
	.addrsig_sym retfunc2
	.addrsig_sym t6