	.text
	.globl	free_list                       // -- Begin function free_list
	.p2align	2
	.type	free_list,@function
free_list:                              // @free_list
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	free_node
	ldr	x0, [sp, #8]
	bl	free
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	free_list, .Lfunc_end0-free_list
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free_node
	.addrsig_sym free