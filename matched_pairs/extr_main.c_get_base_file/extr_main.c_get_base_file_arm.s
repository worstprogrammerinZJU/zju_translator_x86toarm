	.text
	.globl	get_base_file                   // -- Begin function get_base_file
	.p2align	2
	.type	get_base_file,@function
get_base_file:                          // @get_base_file
// %bb.0:
	adrp	x8, infile
	ldr	x0, [x8, :lo12:infile]
	ret
.Lfunc_end0:
	.size	get_base_file, .Lfunc_end0-get_base_file
                                        // -- End function
	.type	infile,@object                  // @infile
	.bss
	.globl	infile
	.p2align	3
infile:
	.xword	0
	.size	infile, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym infile