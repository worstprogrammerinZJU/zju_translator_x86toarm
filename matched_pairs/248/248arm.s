	.text
	.globl	block_append                    // -- Begin function block_append
	.p2align	2
	.type	block_append,@function
block_append:                           // @block_append
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x1, [sp, #16]
	str	x2, [sp, #24]
	str	x0, [sp, #8]
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	ldr	x1, [sp, #24]
	bl	inst_join
	b	.LBB0_4
.LBB0_3:
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	block_append, .Lfunc_end0-block_append
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_join