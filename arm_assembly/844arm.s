	.text
	.p2align	2                               // -- Begin function stack_block_next
	.type	stack_block_next,@function
stack_block_next:                       // @stack_block_next
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	stack_block
	subs	x0, x0, #4
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stack_block_next, .Lfunc_end0-stack_block_next
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stack_block_next
	.addrsig_sym stack_block