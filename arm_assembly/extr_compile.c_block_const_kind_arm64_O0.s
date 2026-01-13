	.text
	.globl	block_const_kind                // -- Begin function block_const_kind
	.p2align	2
	.type	block_const_kind,@function
block_const_kind:                       // @block_const_kind
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
	bl	jv_get_kind
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	block_const_kind, .Lfunc_end0-block_const_kind
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym block_is_const
	.addrsig_sym jv_get_kind