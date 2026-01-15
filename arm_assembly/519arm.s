	.text
	.globl	get_labels                      // -- Begin function get_labels
	.p2align	2
	.type	get_labels,@function
get_labels:                             // @get_labels
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	get_paths
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	list_to_array
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	bl	free_list
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	get_labels, .Lfunc_end0-get_labels
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_paths
	.addrsig_sym list_to_array
	.addrsig_sym free_list