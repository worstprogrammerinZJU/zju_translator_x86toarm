	.text
	.p2align	2                               // -- Begin function get_workspace_size
	.type	get_workspace_size,@function
get_workspace_size:                     // @get_workspace_size
// %bb.0:
	ldr	x8, [x0, #24]
	ldr	x9, [x0]
	mul	x8, x8, x9
	ldr	x9, [x0, #8]
	mul	x8, x8, x9
	ldr	x9, [x0, #8]
	mul	x8, x8, x9
	ldr	x9, [x0, #16]
	mul	x8, x8, x9
	lsl	x0, x8, #2
	ret
.Lfunc_end0:
	.size	get_workspace_size, .Lfunc_end0-get_workspace_size
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_workspace_size