	.text
	.p2align	2                               // -- Begin function block_bind_subblock
	.type	block_bind_subblock,@function
block_bind_subblock:                    // @block_bind_subblock
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	str	w3, [sp, #16]
	ldur	w1, [x29, #-4]
	ldur	w2, [x29, #-8]
	ldur	w3, [x29, #-12]
	ldr	w4, [sp, #16]
	add	x0, sp, #12
	bl	block_bind_subblock_inner
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	block_bind_subblock, .Lfunc_end0-block_bind_subblock
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_bind_subblock
	.addrsig_sym block_bind_subblock_inner