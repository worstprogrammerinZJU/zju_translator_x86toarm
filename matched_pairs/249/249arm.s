	.text
	.p2align	2                               // -- Begin function block_bind
	.type	block_bind,@function
block_bind:                             // @block_bind
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	str	w2, [sp, #4]
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #8]
	ldr	w2, [sp, #4]
	bl	block_bind_each
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #8]
	bl	block_join
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	block_bind, .Lfunc_end0-block_bind
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_bind
	.addrsig_sym block_bind_each
	.addrsig_sym block_join