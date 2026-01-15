	.text
	.globl	decNumberVersion                // -- Begin function decNumberVersion
	.p2align	2
	.type	decNumberVersion,@function
decNumberVersion:                       // @decNumberVersion
// %bb.0:
	adrp	x8, DECVERSION
	ldr	x0, [x8, :lo12:DECVERSION]
	ret
.Lfunc_end0:
	.size	decNumberVersion, .Lfunc_end0-decNumberVersion
                                        // -- End function
	.type	DECVERSION,@object              // @DECVERSION
	.bss
	.globl	DECVERSION
	.p2align	3
DECVERSION:
	.xword	0
	.size	DECVERSION, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DECVERSION