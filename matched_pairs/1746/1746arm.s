	.text
	.globl	get_current_batch               // -- Begin function get_current_batch
	.p2align	2
	.type	get_current_batch,@function
get_current_batch:                      // @get_current_batch
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	ldr	x10, [sp, #8]
	ldr	x10, [x10, #16]
	mul	x9, x9, x10
	udiv	x8, x8, x9
	str	x8, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	get_current_batch, .Lfunc_end0-get_current_batch
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig