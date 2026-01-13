	.text
	.globl	ctsetbytes                      // -- Begin function ctsetbytes
	.p2align	2
	.type	ctsetbytes,@function
ctsetbytes:                             // @ctsetbytes
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	ldrsw	x8, [sp, #12]
	adrp	x9, bbytes
	str	x8, [x9, :lo12:bbytes]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	ctsetbytes, .Lfunc_end0-ctsetbytes
                                        // -- End function
	.type	bbytes,@object                  // @bbytes
	.bss
	.globl	bbytes
	.p2align	3
bbytes:
	.xword	0                               // 0x0
	.size	bbytes, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bbytes