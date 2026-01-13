	.text
	.globl	set_output_file                 // -- Begin function set_output_file
	.p2align	2
	.type	set_output_file,@function
set_output_file:                        // @set_output_file
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	adrp	x9, outputfp
	str	x8, [x9, :lo12:outputfp]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	set_output_file, .Lfunc_end0-set_output_file
                                        // -- End function
	.type	outputfp,@object                // @outputfp
	.bss
	.globl	outputfp
	.p2align	3
outputfp:
	.xword	0
	.size	outputfp, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym outputfp