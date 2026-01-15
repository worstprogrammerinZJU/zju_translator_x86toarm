	.text
	.globl	get_base_file                   // -- Begin function get_base_file
	.p2align	2
	.type	get_base_file,@function
get_base_file:                          // @get_base_file
// %bb.0:
	mov	x0, xzr
	ret
.Lfunc_end0:
	.size	get_base_file, .Lfunc_end0-get_base_file
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig