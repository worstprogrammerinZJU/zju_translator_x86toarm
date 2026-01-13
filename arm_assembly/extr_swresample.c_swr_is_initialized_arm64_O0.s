	.text
	.globl	swr_is_initialized              // -- Begin function swr_is_initialized
	.p2align	2
	.type	swr_is_initialized,@function
swr_is_initialized:                     // @swr_is_initialized
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ne
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	swr_is_initialized, .Lfunc_end0-swr_is_initialized
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig