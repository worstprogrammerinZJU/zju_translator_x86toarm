	.text
	.globl	ctdir                           // -- Begin function ctdir
	.p2align	2
	.type	ctdir,@function
ctdir:                                  // @ctdir
// %bb.0:
	adrp	x8, curdir
	ldr	x0, [x8, :lo12:curdir]
	ret
.Lfunc_end0:
	.size	ctdir, .Lfunc_end0-ctdir
                                        // -- End function
	.type	curdir,@object                  // @curdir
	.bss
	.globl	curdir
	.p2align	3
curdir:
	.xword	0
	.size	curdir, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym curdir