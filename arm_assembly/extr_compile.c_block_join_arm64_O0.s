	.text
	.globl	block_join                      // -- Begin function block_join
	.p2align	2
	.type	block_join,@function
block_join:                             // @block_join
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w8, [x29, #-4]
	add	x0, sp, #4
	str	w8, [sp, #4]
	ldr	w1, [sp, #8]
	bl	block_append
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	block_join, .Lfunc_end0-block_join
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_append