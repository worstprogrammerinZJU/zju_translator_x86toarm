	.text
	.p2align	2                               // -- Begin function inst_block
	.type	inst_block,@function
inst_block:                             // @inst_block
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #8]
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	inst_block, .Lfunc_end0-inst_block
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_block