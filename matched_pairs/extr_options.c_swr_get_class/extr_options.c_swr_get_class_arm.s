	.text
	.globl	swr_get_class                   // -- Begin function swr_get_class
	.p2align	2
	.type	swr_get_class,@function
swr_get_class:                          // @swr_get_class
// %bb.0:
	adrp	x0, av_class
	add	x0, x0, :lo12:av_class
	ret
.Lfunc_end0:
	.size	swr_get_class, .Lfunc_end0-swr_get_class
                                        // -- End function
	.type	av_class,@object                // @av_class
	.section	.rodata,"a",@progbits
	.globl	av_class
	.p2align	2
av_class:
	.word	0                               // 0x0
	.size	av_class, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym av_class