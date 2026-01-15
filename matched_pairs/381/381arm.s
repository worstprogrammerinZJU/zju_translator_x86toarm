	.text
	.globl	swap_binary                     // -- Begin function swap_binary
	.p2align	2
	.type	swap_binary,@function
swap_binary:                            // @swap_binary
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	swap_binary, .Lfunc_end0-swap_binary
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig