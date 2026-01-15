	.text
	.globl	stack_get_pos                   // -- Begin function stack_get_pos
	.p2align	2
	.type	stack_get_pos,@function
stack_get_pos:                          // @stack_get_pos
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	w8, [x8, #4]
	str	w8, [sp, #8]
	ldr	x8, [sp]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stack_get_pos, .Lfunc_end0-stack_get_pos
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig