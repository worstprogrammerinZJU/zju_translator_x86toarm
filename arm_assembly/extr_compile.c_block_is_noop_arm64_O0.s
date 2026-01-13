	.text
	.globl	block_is_noop                   // -- Begin function block_is_noop
	.p2align	2
	.type	block_is_noop,@function
block_is_noop:                          // @block_is_noop
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	x8, [sp, #16]
	mov	w9, #0
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, eq
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	block_is_noop, .Lfunc_end0-block_is_noop
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig