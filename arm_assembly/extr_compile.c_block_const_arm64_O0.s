	.text
	.globl	block_const                     // -- Begin function block_const
	.p2align	2
	.type	block_const,@function
block_const:                            // @block_const
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	block_is_const
	bl	assert
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	jv_copy
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	block_const, .Lfunc_end0-block_const
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym block_is_const
	.addrsig_sym jv_copy