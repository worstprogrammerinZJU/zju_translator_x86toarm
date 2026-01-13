	.text
	.p2align	2                               // -- Begin function stack_block
	.type	stack_block,@function
stack_block:                            // @stack_block
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	add	x0, x8, x9
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stack_block, .Lfunc_end0-stack_block
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stack_block